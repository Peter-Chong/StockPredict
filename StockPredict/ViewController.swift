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
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var sentimentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let swifter = Swifter(consumerKey: "iEz6tiaMkhI5fLFhyCJfmJqwG", consumerSecret: "RhaIoLJRlCs8mAynAfsgxlf8dnoXN5jLuNd2mNiXm9Ju406yem")
    
    let sentimentClassifier = TweetSentimentClassifier()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let prediction = try! sentimentClassifier.prediction(text: "@Apple is bad")
        
        swifter.searchTweet(using: "@Apple",lang: "en", count: 100, tweetMode: .extended, success: { (results, metadata) in
            
            var tweets = [String]()
            
            for i in 0..<100 {
                if let tweet = results[i]["full_text"].string {
                    tweets.append(tweet)
                }
            }
            
        }) { (error) in
            print("There was an error with API request, \(error)")
        }
        
    }

    @IBAction func predictPressed(_ sender: UIButton) {
        
        
    }
    
}

