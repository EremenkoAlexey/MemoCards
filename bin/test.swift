//
//  test.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 24.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class test: UIImageView {
    // произвольное перетаскивание объекта
     @objc func dragCard(recognaizer: UIPanGestureRecognizer){
         switch recognaizer.state {
         case .began:
             print("began")
         case .changed:
             let translation = recognaizer.translation(in: self)
             
             let newX = self.center.x + translation.x
             let newY = self.center.y + translation.y
             
             
             self.center = CGPoint(x: newX, y: newY)
             recognaizer.setTranslation(CGPoint.zero, in: self)
         case .ended:
             print("ended")
             
         default:
             print("default")
         }
     }
}
