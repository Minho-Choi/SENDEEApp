//
//  EmotionViewController.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/05.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import UIKit

class EmotionViewController: UIViewController {
    
    let data = [
        miniData(time: 0, emo: "angry"),
        miniData(time: 2, emo: "disgusted"),
        miniData(time: 3, emo: "fearful"),
        miniData(time: 4, emo: ""),
        miniData(time: 6, emo: "happy"),
        miniData(time: 9, emo: "neutral"),
        miniData(time: 11, emo: "sad"),
        miniData(time: 11.5, emo: "happy"),
        miniData(time: 12, emo: "surprised"),
        miniData(time: 13, emo: ""),
        miniData(time: 16, emo: "")]
    
    var emoData = User()

    @IBAction func leftDateButton(_ sender: UIButton) {
    }
    
    @IBAction func rightDateButton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emotionNameLabel: UILabel!
    @IBOutlet weak var emotionBarGraph: EmotionBarView!
    @IBOutlet weak var barGraphStartLabel: UILabel!
    @IBOutlet weak var barGraphEndLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emoData.emoData = data
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        dateLabel.text = dateFormatter.string(from: Date())
        emojiLabel.text = emoData.primeEmo.1
        emotionNameLabel.text = emoData.primeEmo.0
        emotionBarGraph.data = emoData.emoData
        barGraphStartLabel.text = emoData.getFirstTimeAsString()
        barGraphEndLabel.text = emoData.getLastTimeAsString()
        
    }


}
