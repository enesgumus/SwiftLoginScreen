//
//  ViewController.swift
//  UITextFieldExample
//
//  Created by Enes Gümüş on 29.01.2023.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true

    }

    @IBAction func didTaploginButton( sender: UIButton)
    {
        if usernameTextField.text == "enesgumus" && passwordTextField.text == "1234"
        {
            errorLabel.isHidden = false
            activityIndicatorView.startAnimating()
            errorLabel.text = "Giriş Başarılı"
            
            
        }
        
        else
        
        {
                errorLabel.isHidden = false
                errorLabel.text = "!Hatalı Kullanıcı adı veya Şifre"
                activityIndicatorView.stopAnimating()
            
        }
            
    }
    
}


