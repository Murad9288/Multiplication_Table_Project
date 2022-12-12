//
//  ViewController.swift
//  Namota Project
//
//  Created by Md Murad Hossain on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextView: UITextView!
    
    @IBOutlet weak var namotaTextField: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var textViewView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        private function call
        textFieldViewButtonCustomization()
        buttonView.pulsate()
        
    }
    
//    MARK: Private Mathode
    /****   TextField and TextView and Button Customization       ***/
    
    private func textFieldViewButtonCustomization() {
        // border add
        namotaTextField.layer.borderWidth = 2
        namotaTextField.layer.borderColor = CGColor(red: 1/100, green: 3/20, blue: 7/21, alpha: 0.3)
        namotaTextField.layer.cornerRadius = 15
        namotaTextField.layer.masksToBounds = true
        
//        numberTextView.layer.borderWidth = 4
//        numberTextView.layer.borderColor = CGColor(red: 100/100, green: 30/20, blue: 20/21, alpha: 30)
//        numberTextView.layer.cornerRadius = 30
//        numberTextView.layer.masksToBounds = true
        
        
//        MARK: MaksToBounds layer add
        let path = UIBezierPath(roundedRect: numberTextView.bounds, byRoundingCorners:[UIRectCorner.bottomRight, .bottomLeft], cornerRadii: CGSizeMake(50, 50))
//        let path2 = UIBezierPath(roundedRect: namotaTextField.bounds, byRoundingCorners:[UIRectCorner.topLeft, .topRight], cornerRadii: CGSizeMake(50, 50))
        
        let maskLayer = CAShapeLayer()
//        let masklayer2 = CAShapeLayer()
        maskLayer.path = path.cgPath
//        masklayer2.path = path2.cgPath
        textViewView.layer.mask = maskLayer
        textViewView.layer.masksToBounds = true
        
//        namotaTextField.layer.mask = masklayer2
//        namotaTextField.layer.masksToBounds = true
        
        // border add
        textViewView.layer.borderWidth = 2
        textViewView.layer.borderColor = CGColor(red: 40/100, green: 30/100, blue: 20/100, alpha: 0.3)
        
//        namotaTextField.layer.borderWidth = 2
//        namotaTextField.layer.borderColor = CGColor(red: 1/100, green: 3/100, blue: 7/100, alpha: 0.045)


        
    }
    
    
    @IBAction func enterButton(_ sender: UIButton) {
        
        // MARK: If you want, you can use the action button directly without taking it as a function.
        
//        let k = Int(namotaTextField.text!)!
//        numberTextView.text = "Multiplication table of your \(k)th house: \n"
//        for index in 1...10 {
//            numberTextView.text += "\(k) x \(index) = \(k*index)\n\n"
//
//        }
        
        // MARK: Calculatio Function call
        
        //calulationWithOutMultiple()
        calulationWithMultipleUsed()
    }
    
    
//    MARK: First System:
    
    func calulationWithMultipleUsed(){
        let k = Int(namotaTextField.text!)!
        numberTextView.text = "Multiplication table of your \(k)th house: \n\n"
        for index in 1...10 {
            numberTextView.text += "\(k) x \(index) = \(k*index)\n\n"
            
        }
    }
    
    
//    MARK: Second system:
    
    func calulationWithOutMultiple() {
        let k = Int(namotaTextField.text!)!
        var c = 0
        numberTextView.text = "Multiplication table of your \(k)th house: \n"
        for i in 1...10 {
            c += k
            numberTextView.text += ("\(k) X \(i) = \(c)\n\n")
            
        }
    }
    
}

// MARK:  UIView Animation:

extension UIView {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.80
        pulse.fromValue = 0.90
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 10000000000
        pulse.initialVelocity = 0.98
        pulse.damping = 10
        layer.add(pulse, forKey: "pulse")
    }
}
