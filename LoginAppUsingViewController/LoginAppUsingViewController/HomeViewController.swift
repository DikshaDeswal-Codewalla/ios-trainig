import UIKit

// home view controller for the home screen
class HomeViewController: UIViewController {
    // declare all UI components
    var homeUsernameLabel: UILabel! // username text label
    var username: String  // variable to store username
    var profileImageView: UIImageView! // profile image icon
    var calculatorImageView: UIImageView! // profile image icon
    var calculatorButton: UIButton!  // calculator button
        
    // initialisation
    init(username: String) {
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // initializing and setting up the view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the background color for the view
        view.backgroundColor = .white
        
        // creating instances of components
        homeUsernameLabel = UILabel()  // username label
        profileImageView = UIImageView()  // profileImage icon instance
        calculatorImageView = UIImageView()  // calculatorImage icon instance
        calculatorButton = UIButton(type: .system)
        
        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.image = UIImage(named: "bgImage2")
        
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        
        view.sendSubviewToBack(backgroundImageView)
        
        setHomeUsernameLabelConstraints(homeUsernameLabel: homeUsernameLabel)
        setLoginImageConstraints(profileImageView: profileImageView)
        setCalculatorButtonConstraints(calculatorButton: calculatorButton)
        setCalculatorImageConstraints(calculatorImageView: calculatorImageView)
    }
    
    // function to set the constraints for username label
    func setHomeUsernameLabelConstraints(homeUsernameLabel: UILabel) {
        // Set properties of the label
        homeUsernameLabel.text = username
        homeUsernameLabel.textColor = .black
        homeUsernameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        homeUsernameLabel.textAlignment = .left
        homeUsernameLabel.numberOfLines = 0
        homeUsernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(homeUsernameLabel)
        
        // setting constraints to usernameLabel
        NSLayoutConstraint.activate([
            homeUsernameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25), // Top constraint
            homeUsernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),  // Leading constraint
            // homeUsernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)  // Trailing constraint
        ])
    }
    
    // function to set the constraints for the profileImage icon
    func setLoginImageConstraints(profileImageView: UIImageView) {
        // Set up the profile image view if the image exists
        if let profileImage = UIImage(named: "profileImage") {
            profileImageView.image = profileImage
        } else {
            print("Image not found!")
            return
        }
        
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        

        profileImageView.layer.cornerRadius = 39
        profileImageView.clipsToBounds = true 
        
        view.addSubview(profileImageView) // adding profileImageView to screen
        
        // layout constraints for profileImageView
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10), // Top constraint
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0), // Leading constraint
            profileImageView.heightAnchor.constraint(equalToConstant: 60), // Height constraint
            profileImageView.widthAnchor.constraint(equalToConstant: 60)  // Width constraint
        ])
    }

    
    // function to set the constraints for the calculatorImage icon
    func setCalculatorImageConstraints(calculatorImageView: UIImageView) {
        // Set up the profile image view if the image exists
        if let calculatorImage = UIImage(named: "calculatorIcon2") {
            calculatorImageView.image = calculatorImage
        } else {
            print("Image not found!")
            return
        }
        
        calculatorImageView.contentMode = .scaleAspectFit
        calculatorImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calculatorImageView) // adding loginImageView to screen
        
        NSLayoutConstraint.activate([
            calculatorImageView.topAnchor.constraint(equalTo: homeUsernameLabel.bottomAnchor, constant: 60),
            calculatorImageView.trailingAnchor.constraint(equalTo: self.calculatorButton.leadingAnchor, constant: -20),
            calculatorImageView.heightAnchor.constraint(equalToConstant: 50), // Height constraint
            calculatorImageView.widthAnchor.constraint(equalToConstant: 50)  // Width constraint
        ])


    }
    
    // function to set the constraints for the calculator button
    func setCalculatorButtonConstraints(calculatorButton: UIButton) {
        // Set up the calculator button
        calculatorButton.setTitle("Calculator", for: .normal)
        calculatorButton.setTitleColor(.white, for: .normal)
        calculatorButton.backgroundColor = .systemBlue
        calculatorButton.layer.cornerRadius = 10
        calculatorButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calculatorButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            // Placing the button below the usernameLabel or another visible view
            calculatorButton.topAnchor.constraint(equalTo: homeUsernameLabel.bottomAnchor, constant: 60), // Positioned 40 points below the username label
            calculatorButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),  // Leading constraint
            calculatorButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // Trailing constraint
            calculatorButton.heightAnchor.constraint(equalToConstant: 50)  // Height constraint
        ])
        
        // Add an action to the button
        calculatorButton.addTarget(self, action: #selector(calculatorButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the login button
    @objc func calculatorButtonTapped() {
        print("Login button tapped")
        let secondViewController = CalculatorViewController(username: self.username)
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
