//
//  ViewController.swift
//  SnapnGo
//
//  Created by Megan Shum on 3/14/17.
//  Copyright © 2017 Megan Shum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Mark: Properties
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var emaillabel: UIScrollView!
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Tried to implement the following functions so that the texfield isn't blocked by the keyboard
    
    func textFieldDidBeginEditing(textField: UITextField){
        switch textField.tag {
        case 0:
            print("Do Nothing")
        default:
            scroll.setContentOffset(CGPoint(x: 0, y: 500), animated: true)
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField){
        scroll.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    // keyboard disappears in the following function
    
    func textFieldShouldReturn(_ textField: UITextField)->Bool{
        if textField.tag == 1{
            emailtxt.resignFirstResponder()
        }
        else if textField.tag == 2{
            passwordtxt.resignFirstResponder()
        }
        return true;
    }

    // Check if the user input exists
    
    /*@IBAction func login(sender: AnyObject){
        if self.EmailText.text == "" || self.PasswordText.text == ""{
            let alertController = UIAlertController(title: "oops", message: "Please enter an email and password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            self.present(alertController, animated: true, completion: nil)
        }
        else {
            print("User has entered username and password")
        }
        
    }*/
    

}

