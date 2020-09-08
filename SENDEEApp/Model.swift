//
//  Model.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/06.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import Foundation

struct miniData {
    var time = Float()
    var emo = String()
}

class User {
    var day = Date()
    var emoData = [miniData]()
    
    var summationEmo: [Float] {
        var emoTime: [Float] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        for index in emoData.indices {
            switch emoData[index].emo {
            case "angry" :
                emoTime[0] += (emoData[index + 1].time - emoData[index].time)
            case "disgusted" :
                emoTime[1] += (emoData[index + 1].time - emoData[index].time)
            case "fearful" :
                emoTime[2] += (emoData[index + 1].time - emoData[index].time)
            case "happy" :
                emoTime[3] += (emoData[index + 1].time - emoData[index].time)
            case "neutral" :
                emoTime[4] += (emoData[index + 1].time - emoData[index].time)
            case "sad" :
                emoTime[5] += (emoData[index + 1].time - emoData[index].time)
            case "surprised" :
                emoTime[6] += (emoData[index + 1].time - emoData[index].time)
            default : break;
            }
        }
        print(emoTime)
        return emoTime
    }
    
    var primeEmo: (String, String) {
        var emoString = ""
        var emoji = ""
        var defaultTime: Float = 0
        for (index, time) in summationEmo.enumerated() {
            if time > defaultTime {
                emoString = String(index)
                defaultTime = time
            }
        }
        
        switch emoString {
        case "0" :
            emoString = "Anger"
            emoji = "🤬"
        case "1" :
            emoString = "Disgust"
            emoji = "🤢"
        case "2" :
            emoString = "Fear"
            emoji = "😱"
        case "3" :
            emoString = "Happiness"
            emoji = "😁"
        case "4" :
            emoString = "Inexpressiveness"
            emoji = "😐"
        case "5" :
            emoString = "Sadness"
            emoji = "😔"
        case "6" :
            emoString = "Surprise"
            emoji = "😲"
        default :
            emoString = "Show Me Your Face!"
            emoji = "😶"
        }
        print(emoString)
        return (emoString, emoji)
    }
    
    func getFirstTimeAsString() -> String {
        if let firstTime = emoData.first {
            return String(firstTime.time)
        } else {
            return ""
        }
    }
    
    func getLastTimeAsString() -> String {
        if let lastTime = emoData.last {
            return String(lastTime.time)
        } else {
            return ""
        }
    }
    
    func addEmoData() {
        
    }
}
