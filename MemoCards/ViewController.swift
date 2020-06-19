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
        
        let imgView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        imgView.backgroundColor = .green
        self.view.addSubview(imgView)
        

        /*
        // it works
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
            ctx.cgContext.setLineWidth(10)

            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        self.view.addSubview(UIImageView(image: img))
        */
    }

    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
    
}

