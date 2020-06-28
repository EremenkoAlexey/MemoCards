//
//  ViewController.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 19.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
//
//    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
//        print("ANY")
//        if gesture.direction == UISwipeGestureRecognizer.Direction.right {
//            print("Swipe Right")
//        }
//    }
//


    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white

        let collection = CollectionView(frame:CGRect(x: 0, y: 0, width: 0, height: 0))

        collection.setupView(view: self.view)
        
        print("w - \(view.bounds.width), h - \(view.bounds.height)")

        //swipeUp.direction = .up

        
        //let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        //swipeDown.direction = .down
        //self.view.addGestureRecognizer(swipeDown)
        
    }
}


