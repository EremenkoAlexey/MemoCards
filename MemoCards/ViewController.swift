//
//  ViewController.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 19.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        let margins = view.layoutMarginsGuide
         

        //private
        let padding: CGFloat = 16

        for index in 1...10
        {
            let imgView = UIView(frame: CGRect(x: 0, y: index*50+1, width: 300, height: 300))
            imgView.backgroundColor = UIColor(red: 0, green: CGFloat(100+index*10)/255, blue: 0, alpha: 1)
            imgView.layer.borderColor = UIColor.red.cgColor
            imgView.layer.borderWidth = 2
            self.view.addSubview(imgView)
            imgView.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([imgView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: padding)])
        }
            //imgView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: padding)//,
                //imgView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: padding),
                //imgView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -padding)
                

    }
}
/*
 NSLayoutConstraint.activate([
     //imgView.widthAnchor.constraint(equalToConstant: 64),
     //imgView.heightAnchor.constraint(equalToConstant: 64),
     imgView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
     imgView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
 ])
 */
            //NSLayoutConstraint.activate(constraints)
            //let rectangle = CGRect(x: 0, y: 0, width: 30, height: 30)
            
        
        
        // it works
/*
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 400, height: 400))
        for (index, cardValue) in ["1st card"].enumerated()//, "2nd card", "3rd card", "4th cad", "5th card"].enumerated()
        {
            let img = renderer.image { ctx in
                ctx.cgContext.setFillColor(UIColor.red.cgColor)
                ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
                ctx.cgContext.setLineWidth(5)


            let rectangle = CGRect(x: 0, y: 0, width: 30, height: 30)
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        self.view.addSubview(UIImageView(image: img))
         }
*/
/*
    }

    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
    
}
*/
