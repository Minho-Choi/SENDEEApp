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
        miniData(time: 3, emo: "disgusted"),
        miniData(time: 9, emo: ""),
        miniData(time: 10, emo: "happy"),
        miniData(time: 10.5, emo: "neutral"),
        miniData(time: 11, emo: "happy"),
        miniData(time: 16, emo: "sad"),
        miniData(time: 17, emo: "surprised"),
        miniData(time: 18, emo: ""),
        miniData(time: 20, emo: "")]
    
    var emoData = User()
    var color = ColorPalette()
    var currentDate = Date()

    @IBOutlet weak var scrollView: UIScrollView!
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
    
    var gradientLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        emoData.emoData = data
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        dateLabel.text = dateFormatter.string(from: currentDate)
        emojiLabel.text = emoData.primeEmo.1
        emotionNameLabel.text = emoData.primeEmo.0
        emotionBarGraph.data = emoData.emoData
        barGraphStartLabel.text = emoData.getFirstTimeAsString()
        barGraphEndLabel.text = emoData.getLastTimeAsString()
        
        gradientLayer.frame = view.bounds
        gradientLayer.locations = [0.2, 0.7, 1.0]
        gradientLayer.colors = [UIColor.white.cgColor, color.colorPick(emo: emoData.primeEmo.0), UIColor.darkGray.cgColor]
        scrollView.layer.insertSublayer(gradientLayer, at: 0)
    }


}
