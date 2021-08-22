//
//  SecondViewController.swift
//  test_colorChange
//
//  Created by BS-236 on 11/8/21.
//

import UIKit

protocol ChooseColorDelegate {
    func changeColor (color: UIColor)
    
}

class SecondViewController: UIViewController {
    
    
    
    var colorDelegate: ChooseColorDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func blackButtonAction(_ sender: Any) {
        
        colorDelegate.changeColor(color: .black)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func blueButtonAction(_ sender: Any) {
        colorDelegate.changeColor(color: .blue)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func redButtonAction(_ sender: Any) {
        colorDelegate.changeColor(color: .red)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clearButtonAction(_ sender: Any) {
        colorDelegate.changeColor(color: .white)
        
        dismiss(animated: true, completion: nil)
    }
    

}
