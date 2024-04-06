//
//  ViewController.swift
//  Projects-lecture13
//
//  Created by MacBook Pro on 04.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var heart: UIButton!
    @IBOutlet weak var line: UIProgressView!
    @IBOutlet weak var describe: UILabel!
    @IBOutlet weak var sizeDescribe: UILabel!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var sizes: UIStackView!
    @IBOutlet weak var priceBuy: UIStackView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var ratingCount: UILabel!
    @IBOutlet weak var priceCount: UILabel!
    @IBOutlet weak var sMall: UIButton!
    @IBOutlet weak var meDium: UIButton!
    @IBOutlet weak var biG: UIButton!
    var currentRating: Double = 4.8
    var currentRatingCount: Int = 230
    var currentPriceCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heart(_ sender: UIButton) {
        currentRating += 0.1
        rating.text = String(format: "%.1f", currentRating)
        currentRatingCount += 1
        ratingCount.text = "\(currentRatingCount)"
    }
    
    @IBAction func sMall(_ sender: UIButton) {
        priceCount.text = "5"
        currentPriceCount = 5
        
    }
    @IBAction func meDium(_ sender: UIButton) {
        priceCount.text = "10"
        currentPriceCount = 10
    }
    
    @IBAction func biG(_ sender: UIButton) {
        priceCount.text = "15"
        currentPriceCount = 15
    }
}

