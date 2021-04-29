//
//  ViewController.swift
//  ClientsApp
//
//  Created by Nika Rakhmanova on 26.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    private let user = User.getUserData()
    

    
    // MARK: IBActions
    @IBAction func logInPressed() {
        guard
            userName.text == user.login,
            password.text == user.password
        else {
           let alertController = UIAlertController (
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert)
            let actionOk = UIAlertAction (title: "OK", style: .default, handler: nil)
            alertController.addAction(actionOk)
            self.present(alertController, animated: true, completion: nil)
            return
        }
    
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: IBActionsLogin
    @IBAction func logining(_ sender: Any) {
    }
    
    @IBAction func showUserNameIfFogot(_ sender: Any) {
        let alertController  = UIAlertController(
        title: "Forgot User Name?",
            message: "You User Name -  \(user.login)", preferredStyle: .alert)
        let actionOk = UIAlertAction (title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction (title: "Cancle", style: .cancel, handler: nil)
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    // MARK: IBActionsPassword
    @IBAction func showPasswordIfForgot(_ sender: Any) {
        let alertController  = UIAlertController(
        title: "Forgot User Password?",
            message: "You User Password - \(user.password)", preferredStyle: .alert)
        let actionOk = UIAlertAction (title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction (title: "Cancle", style: .cancel, handler: nil)
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        self.present(alertController, animated: true, completion: nil)
    
}
    
   
}

