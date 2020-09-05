//
//  EmotionBarView.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/05.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import UIKit

@IBDesignable

class EmotionBarView: UIView {
    
    
    let data = [
        miniData(time: 0, emo: "angry"),
        miniData(time: 3, emo: "disgusted"),
        miniData(time: 5, emo: "fearful"),
        miniData(time: 6, emo: "happy"),
        miniData(time: 9, emo: "neutral"),
        miniData(time: 11, emo: "sad"),
        miniData(time: 12, emo: "surprised")]

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    //self.bounds.width * CGFloat(datum.time / interval)
    //self.bounds.width * CGFloat(1 - (datum.time / interval))
    
    override func draw(_ rect: CGRect) {
        let startedTime = data[0].time
        let endedTime = data[data.count - 1].time
        let interval = endedTime - startedTime
        
        for index in 0..<data.count - 1{
            let graphRect = CGRect(x: rect.minX + rect.width * CGFloat(data[index].time) / CGFloat(interval), y: rect.minY, width: rect.width * CGFloat((data[index + 1].time - data[index].time)) / CGFloat(interval), height: rect.height)
            let path = UIBezierPath(rect: graphRect)
            print(graphRect.minX)
            print(graphRect.width)
            if data[index].emo == "angry" {
                #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
            } else if data[index].emo == "disgusted" {
                #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
            } else if data[index].emo == "fearful" {
                #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
            } else if data[index].emo == "happy" {
                #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setFill()
            } else if data[index].emo == "sad" {
                #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1).setFill()
            } else if data[index].emo == "surprised" {
                #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setFill()
            } else {
                #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
            }
            path.close()
            path.fill()
        }
    }

}

struct miniData {
    var time = Int()
    var emo = String()
}
