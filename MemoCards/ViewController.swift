//
//  ViewController.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 19.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    @objc func dragCard(recognaizer: UIPanGestureRecognizer){
        print("GET THIS")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
        // let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        // button.backgroundColor = .green
        // button.setTitle("Test button", for: .normal)
        // button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        // self.view.addSubview(button)

        // let NewRect = RectView()
        //self.view.(NewRect.renderer)
        
        //let margins = view.layoutMarginsGuide
         

        //private
        //let padding: CGFloat = 16
        

        for _ in 1...1{
            let image = CardView(frame:CGRect(x: 0, y: 0, width: 0, height: 0))
            image.setupViews(view: self.view)
        }

        
        
//        let rec = UIGestureRecognizer(target: self, action: #selector(dragCard))
//        cardGreen.setupViews(view: self.view)
//        cardGreen.addGestureRecognizer(rec)
//
//
//        let panRec = UIPanGestureRecognizer()
//
//        panRec.addTarget(self, action: Selector(("dragCard")))
//        image.addGestureRecognizer(panRec)
//        image.isUserInteractionEnabled = true
        //}
        
        /*
                for index in 1...10
                {
                    let imgView = UIView()
                    imgView.backgroundColor = UIColor(red: 0, green: CGFloat(100+index*10)/255, blue: 0, alpha: 1)
                    imgView.layer.borderColor = UIColor.red.cgColor
                    imgView.layer.borderWidth = 2
                    self.view.addSubview(imgView)
                    imgView.translatesAutoresizingMaskIntoConstraints = false

                    NSLayoutConstraint.activate([
                        imgView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                        imgView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                        imgView.heightAnchor.constraint(equalToConstant: 300),
                        imgView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(index * 50 + 1))
                    ])
                }
 */
    }
}


