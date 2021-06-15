//
//  ViewController.swift
//  Password Genarator
//
//  Created by Koushik Herle on 15/06/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var randomPassword: UITextField!
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let special = ["+", "-", "&&", "||", "!", "(", ")", "{", "}", "[", "]", "^","~", "*", "?", ":"
        ]
    let numbers = ["1","2","3","4","5","6","7","8","9","0"]
    
    let capAlphabets = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var password = " "

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonClicked(_ sender: Any) {
        
        let a = capAlphabets[Int.random(in: 0...25)] + capAlphabets[Int.random(in: 0...25)] + numbers[Int.random(in: 0...9)] +
        alphabet[Int.random(in: 0...25)]
        
        let b = alphabet[Int.random(in: 1...25)] + capAlphabets[Int.random(in: 0...25)] + numbers[Int.random(in: 0...9)] + special[Int.random(in: 0...15)] + capAlphabets[Int.random(in: 1...25)]
        
        let c = alphabet[Int.random(in: 1...25)] + special[Int.random(in: 0...15)] + alphabet[Int.random(in: 1...25)] + capAlphabets[Int.random(in: 1...25)] + numbers[Int.random(in: 0...9)]
        
        let d = alphabet[Int.random(in: 1...25)] + capAlphabets[Int.random(in: 1...25)] + alphabet[Int.random(in: 1...25)] + numbers[Int.random(in: 0...9)] + special[Int.random(in: 0...15)]
        
        
        
        password = a + b + c + d
        
        randomPassword.text = password
        copyButton.setTitle("Copy", for: .normal)
        copyButton.setTitleColor(#colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1), for: .normal)
        
    }
    @IBAction func copyButton(_ sender: AnyObject) {
        let pasteBoard = UIPasteboard.general
        pasteBoard.string = password
        sender.setTitle("Copied!", for: .normal)
        sender.setTitleColor(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), for: .normal)
        
        
    }
}

