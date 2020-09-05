//
//  EmotionViewController.swift
//  SENDEEApp
//
//  Created by Minho Choi on 2020/09/05.
//  Copyright © 2020 Minho Choi. All rights reserved.
//

import UIKit

class EmotionViewController: UIViewController {
    
    lazy var todaysEmotion = DailyEmotion(day: Date, emoData: emotionArray)
    
    var emotionArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

