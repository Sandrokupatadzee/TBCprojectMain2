//
//  ViewController.swift
//  Projects-lecture12
//
//  Created by MacBook Pro on 04.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var sum: UILabel!
    @IBOutlet weak var switchAll: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchAll(_ sender: UISwitch) { if sender.isOn {
        
        Label1.text = "უდიდესი საერთო გამყოფი"
    } else {
        Label1.text = "უმცირესი საერთო ჯერადი"
    }
    }
    func udidesiGamyofi(number1: Int, number2: Int) -> Int {
        var first = number1
        var second = number2
        
        while second != 0 {
            let lastT = second
            second = first % second
            first = lastT
        }
        
        return first
        
    }
    
    func umciresiJeradi(number1: Int, number2: Int) -> Int {
        let final = number1 * number2
        let maxNum = max(number1, number2)
        
        for number in maxNum...final {
            if number % number1 == 0 && number % number2 == 0 {
                return number
            }
        }
        
        return final
    }
    
    @IBAction func sumButton(_ sender: UIButton) {
        guard let text1 = textField1.text, let text2 = textField2.text,
              let num1 = Int(text1), let num2 = Int(text2) else { return }
        
        let result = switchAll.isOn ? udidesiGamyofi(number1: num1, number2: num2) :
        umciresiJeradi(number1: num1, number2: num2)
        sum.text = "პასუხი: \(result)"
    }
    
}

