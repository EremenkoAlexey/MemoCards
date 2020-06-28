//
//  CollectionView.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 28.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class CollectionView: UIView {

    //var topInset = CGFloat(0)
    //var bottomInset = CGFloat(0)
    
        @objc func handleGesture(recognaizer: UIPanGestureRecognizer){
            guard recognaizer.state == .ended else {
          return
            }
        guard let gestureView = recognaizer.view else {
          return
        }
            // 1
            let velocity = recognaizer.velocity(in: self)
            let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
            let slideMultiplier = magnitude / 200
        
            // 2
            let slideFactor = 0.1 * slideMultiplier
            // 3
            var finalPoint = CGPoint(
              x: gestureView.center.x, //+ (velocity.x * slideFactor),
              y: gestureView.center.y + (velocity.y * slideFactor)
            )
            // 4
            //finalPoint.x = min(max(finalPoint.x, 0), self.bounds.width)
            //finalPoint.y = min(max(finalPoint.y, 0), self.bounds.height)
            if velocity.y > 0.0 { // токаем вниз
                // TODO: заменить на нижнюю границу
                finalPoint.y = min(finalPoint.y, CGFloat(700+75))
                //finalPoint.y = min(finalPoint.y, topInset)
            }
            else{ // толкаем вверх
                // TODO: заменить на верхнюю границу
                //finalPoint.y = max(finalPoint.y, CGFloat(50+75))
                finalPoint.y = max(finalPoint.y, CGFloat(218.5))
                // finalPoint.y = max(finalPoint.y, bottomInset)
                }
                        print("start = \(gestureView.center.y)")
                        print("final = \(finalPoint.y)")
            
                UIView.animate(
                    withDuration: Double(slideFactor * 3), //0.2
              delay: 0,
                options: .curveEaseInOut,
              animations: {
                gestureView.center = finalPoint
        }
 
            
          )
        }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
//        let insets = self.safeAreaInsets
//        topInset = insets.top
//        bottomInset = insets.bottom
//        print("top = \(topInset)")
//        print("bottom = \(bottomInset)")
        
        for index in 1...3{
            let image = CardView(frame:CGRect(x: 0, y: 0, width: 0, height: 0))
            image.setupViews(view: self, index: index)
        }
        let swipeUp = UIPanGestureRecognizer(target: self, action: #selector(handleGesture))
        self.addGestureRecognizer(swipeUp)
        


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setupView(view: UIView) {
        view.addSubview(self)
        setupConstraints(view: view)
        //self.backgroundColor = .lightGray
        //print("w - \(view.bounds.width), h - \(view.bounds.height), \(#function)")


        //setupGestures()
        //viewTopAnchor = view.safeAreaLayoutGuide.topAnchor
    }
    
    private func setupConstraints(view: UIView) {
        
    NSLayoutConstraint.activate([
//        self.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//        self.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//        self.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
//        self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
//
        self.leadingAnchor.constraint(equalTo: (self.superview)!.safeAreaLayoutGuide.leadingAnchor), //, constant: 20),
        self.trailingAnchor.constraint(equalTo: (self.superview)!.safeAreaLayoutGuide.trailingAnchor), //, constant: -20),
        self.bottomAnchor.constraint(equalTo: (self.superview)!.safeAreaLayoutGuide.bottomAnchor, constant: -200),
        self.topAnchor.constraint(equalTo: (self.superview)!.safeAreaLayoutGuide.topAnchor, constant: 50)
    ])
    }
    
}
