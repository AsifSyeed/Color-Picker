//
//  ViewController.swift
//  test_colorChange
//
//  Created by BS-236 on 11/8/21.


import UIKit

class FirstViewController: UIViewController, ChooseColorDelegate {
    func changeColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func chooseColorAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.colorDelegate = self
        present(vc, animated: true, completion: nil)
    }

}
