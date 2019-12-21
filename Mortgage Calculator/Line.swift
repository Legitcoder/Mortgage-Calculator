//
//  Line.swift
//  Graph
//
//  Created by Moin Uddin on 12/19/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import UIKit

class Line: UIView {

    
    override func draw(_ rect: CGRect) {
        UIColor.red.set()
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 0, y: bounds.height))
        line.addLine(to: CGPoint(x: 10, y: bounds.height - 20))
        line.addLine(to: CGPoint(x: 20, y: bounds.height - 50))
        line.lineWidth = 2
        line.stroke()
    }
    
    

}
