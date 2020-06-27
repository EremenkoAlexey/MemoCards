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
        
        for index in 1...3{
            let image = CardView(frame:CGRect(x: 0, y: 0, width: 0, height: 0))
            image.setupViews(view: self.view, index: index)
        }        
    }
}


