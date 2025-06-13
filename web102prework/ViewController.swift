//
//  ViewController.swift
//  web102prework
//
//  Created by Aisha Salimgereyeva on 6/12/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var schoolInput: UITextField!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var petsNumberLabel: UILabel!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var petsSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {

        petsNumberLabel.text = "\(Int(sender.value))"
   }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        let introduction = """
        My name is \(firstNameInput.text!) \(lastNameInput.text!) and I attend \(schoolInput.text!).
        I am currently in my \(year!) year and I own \(petsNumberLabel.text!) dogs.
        It is \(petsSwitch.isOn) that I want more pets.
        """
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
   
}

