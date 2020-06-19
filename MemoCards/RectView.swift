//
//  RectView.swift
//  MemoCards
//
//  Created by Aleksei Eremenko on 19.06.2020.
//  Copyright © 2020 Aleksei Eremenko. All rights reserved.
//

import UIKit

class RectView: UIView {
    let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
    
    lazy var img = renderer.image { ctx in
        ctx.cgContext.setFillColor(UIColor.red.cgColor)
        ctx.cgContext.setStrokeColor(UIColor.green.cgColor)
        ctx.cgContext.setLineWidth(10)
 
        let rectangle = CGRect(x: 30, y: 30, width: 512, height: 512)
        ctx.cgContext.addRect(rectangle)
        ctx.cgContext.drawPath(using: .fillStroke)
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    // override func draw(_ rect: CGRect) {
        // Drawing code
    // }
    

}
