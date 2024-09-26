import UIKit

// root view controller
class ViewController: UIViewController {
    // declare all UI components
    var loginImageView: UIImageView! // login image icon
    var usernameLabel: UILabel! // username text label
    var passwordLabel: UILabel! // password text label
    var errorLabel: UILabel!  // error text label
    var usernameTextField: UITextField! // username text field
    var passwordTextField: UITextField! // password text field
    let username: String = "Diksha" // login username
    let password: String = "123"  // login password
    
    // initializing and setting up the view
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // set the background color for the view
        view.backgroundColor = .white
        
        // creating instances of components
        loginImageView = UIImageView()  // loginImage icon instance
        usernameLabel = UILabel()  // username label
        passwordLabel = UILabel()  // password label
        errorLabel = UILabel()  // error label
        passwordTextField = UITextField()  // password text field
        usernameTextField = UITextField()  // username text field
        var loginButton: UIButton!  // login button instance
        loginButton = UIButton(type: .system)
        
        // setting constraints for UI Components
        setLoginImageConstraints(loginImageView: loginImageView)
        setUsernameLabelConstraints(usernameLabel: usernameLabel)
        setPasswordLabelConstraints(passwordLabel: passwordLabel)
        setUsernameTextFieldConstraints(usernameTextField: usernameTextField)
        setPasswordTextFieldConstraints(passwordTextField: passwordTextField)
        setLoginButtonConstraints(loginButton: loginButton)
        
        // Create an instance of the second view controller and pass data
        let secondVC = HomeViewController(username: usernameTextField.text!)
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    // function to set the constraints for the loginImage icon
    func setLoginImageConstraints(loginImageView: UIImageView) {
        // Set up the login image view if the image exists
        if let loginImage = UIImage(named: "loginImage") {
            loginImageView.image = loginImage
        } else {
            print("Image not found!")
            return
        }
        
        loginImageView.contentMode = .scaleAspectFit
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginImageView) // adding loginImageView to screen
        
        // layout constraints for loginImageView
        NSLayoutConstraint.activate([
            loginImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0), // top constraint
            loginImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10), // leading constraint
            loginImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // trailing constraint
            loginImageView.heightAnchor.constraint(equalToConstant: 120)  // height constraint
        ])
    }

    
    // function to set the constraints for username label
    func setUsernameLabelConstraints(usernameLabel: UILabel) {
        // Set properties of the label
        usernameLabel.text = "Username"
        usernameLabel.textColor = .gray
        usernameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        usernameLabel.textAlignment = .left
        usernameLabel.numberOfLines = 0
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding usernameLabel to the view hierarchy
        view.addSubview(usernameLabel)
        
        // Applying constraints to usernameLabel
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: 20), // vertical spacing between loginImage and usernameLabel
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),  // leading constraint
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)  // trailing constraint
        ])
    }
    
    // function to set the constraints for password label
    func setPasswordLabelConstraints(passwordLabel: UILabel) {
        // Set properties of the label
        passwordLabel.text = "Password"
        passwordLabel.textColor = .gray
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 25)
        passwordLabel.textAlignment = .left
        passwordLabel.numberOfLines = 0
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding passwordLabel to the view hierarchy
        view.addSubview(passwordLabel)
        
        // Applying constraints to usernameLabel
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 20), // vertical spacing between loginImage and usernameLabel
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),  // leading constraint
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)  // trailing constraint
        ])
    }
    
    // function to set the constraints for usernameTextField
    func setUsernameTextFieldConstraints(usernameTextField: UITextField) {
        // set properties of the textField
        usernameTextField.placeholder = "Enter your username.."
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(usernameTextField)
                
        // set constraints for usernameTextField (below password text field)
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: 12),  // vertical spacing with usernameTextField
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),  // leading constraint
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // trailing constraint
            usernameTextField.heightAnchor.constraint(equalToConstant: 40) // height constraint
        ])
    }
    
    // function to set the constraints for passwordTextField
    func setPasswordTextFieldConstraints(passwordTextField: UITextField) {
        // set properties of the textField
        passwordTextField.placeholder = "Enter your password.."
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(passwordTextField)
                
        // set constraints for usernameTextField (below password text field)
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15),  // vertical spacing with usernameTextField
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),  // leading constraint
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // trailing constraint
            passwordTextField.heightAnchor.constraint(equalToConstant: 40) // height constraint
        ])
    }
    
    // function to set the constraints for the login button
    func setLoginButtonConstraints(loginButton: UIButton) {
        // Set up the login button
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.layer.cornerRadius = 10
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
                
        // Set constraints for loginButton (below username text field)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
                
        // Add an action to the button
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the login button
    @objc func loginButtonTapped() {
        print("Login button tapped")
        if usernameTextField.text == username && passwordTextField.text == password {
            let secondViewController = HomeViewController(username: username)
            navigationController?.pushViewController(secondViewController, animated: true)
        } else {
            print("Invalid credentials")
            setErrorLabelConstraints(errorLabel: errorLabel)
        }
    }
    
    // function to set the constraints for error label
    func setErrorLabelConstraints(errorLabel: UILabel) {
        // Set properties of the label
        errorLabel.text = "Invalid Credetials"
        errorLabel.textColor = .red
        errorLabel.font = UIFont.boldSystemFont(ofSize: 15)
        errorLabel.textAlignment = .left
        errorLabel.numberOfLines = 0
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding passwordLabel to the view hierarchy
        view.addSubview(errorLabel)
        
        // Applying constraints to usernameLabel
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10), // vertical spacing between passwordTextField and errorLabel
            errorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 156),  // leading constraint
            errorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)  // trailing constraint
        ])
    }
}

