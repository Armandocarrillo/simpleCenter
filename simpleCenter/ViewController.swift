//
//  ViewController.swift
//  simpleCenter
//
//  Created by Armando Carrillo on 27/03/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var answerLabel: UILabel!
    
    let elementList = ["Carbon" , "Oro", "Cloro", "Sodio"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    updateElement()
    }
    
    func updateElement () {
        
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        
        }
        updateElement()
    }
    @IBAction func showAnwer(_ sender: UIButton) {
        answerLabel.text = elementList [currentElementIndex]
    }
    

}

