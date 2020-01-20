//
//  ViewController.swift
//  StockPredict
//
//  Created by Weng Liang Chong on 20/01/2020.
//  Copyright © 2020 Weng Liang Chong. All rights reserved.
//

import UIKit
import SwifteriOS
import CoreML

class ViewController: UIViewController {

    @IBOutlet weak var sentimentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let swifter = Swifter(consumerKey: "iEz6tiaMkhI5fLFhyCJfmJqwG", consumerSecret: "RhaIoLJRlCs8mAynAfsgxlf8dnoXN5jLuNd2mNiXm9Ju406yem")
    
    let sentimentClassifier = TweetSentimentClassifier()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let prediction = try! sentimentClassifier.prediction(text: <#T##String#>)
        
        swifter.searchTweet(using: <#T##String#>,lang: "en", count: 100, tweetMode: .extended, success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("There was an error with API request, \(error)")
        }
        
    }

    @IBAction func predictPressed(_ sender: UIButton) {
        
        
    }
    
}

