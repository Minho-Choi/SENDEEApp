//
//  EmotionBarView.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/05.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import UIKit

class EmotionBarView: UIView {
    
    var data = [miniData]()
    
    override func draw(_ rect: CGRect) {
        let startedTime = data[0].time
        let endedTime = data[data.count - 1].time
        let interval = endedTime - startedTime
        
        for index in 0..<data.count - 1{
            let graphRect = CGRect(x: rect.minX + rect.width * CGFloat(data[index].time) / CGFloat(interval), y: rect.minY, width: rect.width * CGFloat((data[index + 1].time - data[index].time)) / CGFloat(interval), height: rect.height)
            let path = UIBezierPath(rect: graphRect)
            if data[index].emo == "angry" {
                #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1).setFill()
            } else if data[index].emo == "disgusted" {
                #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1).setFill()
            } else if data[index].emo == "fearful" {
                #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1).setFill()
            } else if data[index].emo == "happy" {
                #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1).setFill()
            } else if data[index].emo == "sad" {
                #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1).setFill()
            } else if data[index].emo == "surprised" {
                #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1).setFill()
            } else if data[index].emo == "neutral"{
                #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1).setFill()
            } else {
                #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setFill()
            }
            path.close()
            path.fill()
        }
    }

}

