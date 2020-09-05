//
//  EmotionBarView.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/05.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import UIKit

class EmotionBarView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        <#code#>
    }

}


struct DailyEmotion {
    var day: Date
    var emoData: [emoDatum]
    
    var stringDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: self.day)
    }
    
    var firstTimeStartWatching: String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateStyle = .none
        timeFormatter.timeStyle = .short
        if let firstTime = self.emoData.first?.recordedTime {
            return timeFormatter.string(from: firstTime)
        } else {
            return ""
        }
    }
    
    var lastTimeStartWatching: String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateStyle = .none
        timeFormatter.timeStyle = .short
        if let lastTime = self.emoData.last?.recordedTime {
            return timeFormatter.string(from: lastTime)
        } else {
            return ""
        }
    }
}

struct emoDatum {
    var recordedTime: Date
    var emotion: Emotion
}

enum Emotion {
    case angry
    case disgusted
    case fearful
    case happy
    case neutral
    case sad
    case surprised
}
