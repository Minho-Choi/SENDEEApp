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
    var color = ColorPalette()
    
    override func draw(_ rect: CGRect) {
        let startedTime = data[0].time
        let endedTime = data[data.count - 1].time
        let interval = endedTime - startedTime
        
        for index in 0..<data.count - 1{
            let graphRect = CGRect(x: rect.minX + rect.width * CGFloat(data[index].time) / CGFloat(interval), y: rect.minY, width: rect.width * CGFloat((data[index + 1].time - data[index].time)) / CGFloat(interval), height: rect.height)
            let path = UIBezierPath(rect: graphRect)
            if data[index].emo == "angry" {
                UIColor(cgColor: color.angerColor).setFill()
            } else if data[index].emo == "disgusted" {
                UIColor(cgColor: color.disgustColor).setFill()
            } else if data[index].emo == "fearful" {
                UIColor(cgColor: color.fearColor).setFill()
            } else if data[index].emo == "happy" {
                UIColor(cgColor: color.happyColor).setFill()
            } else if data[index].emo == "sad" {
                UIColor(cgColor: color.sadColor).setFill()
            } else if data[index].emo == "surprised" {
                UIColor(cgColor: color.surprisedColor).setFill()
            } else if data[index].emo == "neutral"{
                UIColor(cgColor: color.neutralColor).setFill()
            } else {
                #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setFill()
            }
            path.close()
            path.fill()
        }
    }

}

class ColorPalette {
    let angerColor = CGColor(srgbRed: 253/255, green: 127/255, blue: 124/255, alpha: 1)
    let disgustColor = CGColor(srgbRed: 120/255, green: 248/255, blue: 127/255, alpha: 1)
    let fearColor = CGColor(srgbRed: 123/255, green: 132/255, blue: 252/255, alpha: 1)
    let happyColor = CGColor(srgbRed: 255/255, green: 250/255, blue: 129/255, alpha: 1)
    let sadColor = CGColor(srgbRed: 122/255, green: 214/255, blue: 253/255, alpha: 1)
    let surprisedColor = CGColor(srgbRed: 121/255, green: 251/255, blue: 214/255, alpha: 1)
    let neutralColor = CGColor(srgbRed: 170/255, green: 170/255, blue: 170/255, alpha: 1)
    
    func colorPick(emo: String) -> CGColor {
        switch emo {
        case "Anger" :
            return angerColor
        case "Disgust" :
            return disgustColor
        case "Fear" :
            return fearColor
        case "Happiness" :
            return happyColor
        case "Inexpressiveness" :
            return neutralColor
        case "Sadness" :
            return sadColor
        case "Surprise" :
            return surprisedColor
        default : return CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
