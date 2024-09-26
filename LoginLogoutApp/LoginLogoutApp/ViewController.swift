

import UIKit

class RootViewConntroller: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class FirstViewController: UIViewController {

    @IBOutlet weak var loginImage: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    let username: String = "diksha.d@codewalla.com"
    let password: String = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.isHidden = true
                errorLabel.textColor = UIColor.red
    }
    
    @IBAction func logInButtonActionn(_ sender: Any) {
        navigateToSecondViewController()
    }
    
    func navigateToSecondViewController() {
            if usernameTextField.text == username && passwordTextField.text == password {
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                
                vc.secondUsername = usernameTextField.text!
                vc.secondPassword = passwordTextField.text!
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            } else {
                errorLabel.isHidden = false
                            errorLabel.text = "Invalid credentials"
                print("Invalid credentials")
            }
    }
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var seconndUsernameLabel: UILabel!
    @IBOutlet weak var secondPasswordLabel: UILabel!
    var secondUsername: String = ""
    var secondPassword: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seconndUsernameLabel.text = secondUsername
        secondPasswordLabel.text = secondPassword
    }
}


// Creatinng class for weather application
class WeatherViewController: UIViewController {
    
    
    
    
}
