//
//  ViewController.swift
//  predictions_app
//
//  Created by Denis Makovets on 12/23/19.
//  Copyright © 2019 Denis Makovets. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    var arrayWords = [String]()
    
    @IBOutlet weak var labelWords: UILabel!
    @IBOutlet weak var imageGradient2: UIImageView!
    
    
    override func viewDidLoad() {
        imageGradient2.alpha = 0.0
        super.viewDidLoad()
        readFromFile()
        randomizePredictions()
    }
    override func viewWillAppear(_ animated: Bool) {
        alphaStart()
    }
    
    func readFromFile() {
        if let path = Bundle.main.path(forResource: "words", ofType: "txt"){
            if let textWords = try? String(contentsOfFile: path){
                arrayWords = textWords.components(separatedBy: "\n")
            }
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.8) {
            self.randomizePredictions()
        }
    }
    
    func  randomizePredictions() {
        let randomSymbol = Int.random(in: 0...arrayWords.count - 2)
        labelWords.text = arrayWords[randomSymbol]
    }
    func alphaStart(){
        UIView.animate(withDuration: 1, delay: 0.02, options: [.repeat, .autoreverse], animations: {
            self.imageGradient2.alpha = 1
        })
    }
    
}





