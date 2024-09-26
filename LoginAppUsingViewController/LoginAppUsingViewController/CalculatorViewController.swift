import UIKit

// home view controller for the home screen
class CalculatorViewController: UIViewController {
    // declare all UI components
    var calculatorUsernameLabel: UILabel! // username text label
    var calculatorProfileImageView: UIImageView! // profile image icon
    var username: String  // variable to store username
    var inputLabel: UILabel! // input text field
    var resultLabel: UILabel! // result text field
    var inputData: String  // to store expression
    var resultData: String // to store result
    
    // declare all buttons
    var oneButton: UIButton!  
    var twoButton: UIButton!
    var threeButton: UIButton!
    var fourButton: UIButton!
    var fiveButton: UIButton!
    var sixButton: UIButton!
    var sevenButton: UIButton!
    var eightButton: UIButton!
    var nineButton: UIButton!
    var zeroButton: UIButton!
    var dotButton: UIButton!
    var addButton: UIButton!
    var subButton: UIButton!
    var divButton: UIButton!
    var mulButton: UIButton!
    var clearAllButton: UIButton!
    var delButton: UIButton!
    var equalToButton: UIButton!
    
    // initialisation
    init(username: String) {
        self.username = username
        self.inputData = "5+2"
        self.resultData = "7"
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
        calculatorUsernameLabel = UILabel()  // username label
        calculatorProfileImageView = UIImageView()  // profileImage icon instance
        inputLabel = UILabel()  // input label
        resultLabel = UILabel()  // result label
        
        // creating instances of buttons of calculator
        clearAllButton = UIButton(type: .system)
        delButton = UIButton(type: .system)
        divButton = UIButton(type: .system)
        mulButton = UIButton(type: .system)
        addButton = UIButton(type: .system)
        subButton = UIButton(type: .system)
        nineButton = UIButton(type: .system)
        eightButton = UIButton(type: .system)
        sevenButton = UIButton(type: .system)
        sixButton = UIButton(type: .system)
        fiveButton = UIButton(type: .system)
        fourButton = UIButton(type: .system)
        threeButton = UIButton(type: .system)
        twoButton = UIButton(type: .system)
        oneButton = UIButton(type: .system)
        zeroButton = UIButton(type: .system)
        dotButton = UIButton(type: .system)
        equalToButton = UIButton(type: .system)
        
        setCalculatorUsernameLabelConstraints(calculatorUsernameLabel: calculatorUsernameLabel)
        setLoginImageConstraints(calculatorProfileImageView: calculatorProfileImageView)
        setInputLabelConstraints(inputLabel: inputLabel)
        setResultLabelConstraints(resultLabel: resultLabel)
        setclearAllButtonConstraints(clearAllButton: clearAllButton)
        setDelButtonConstraints(delButton: delButton)
        setDivButtonConstraints(divButton: divButton)
        setMulButtonConstraints(mulButton: mulButton)
        setNineButtonConstraints(nineButton: nineButton)
        setEightButtonConstraints(eightButton: eightButton)
        setSevenButtonConstraints(sevenButton: sevenButton)
        setAddButtonConstraints(addButton: addButton)
        setSixButtonConstraints(sixButton: sixButton)
        setFiveButtonConstraints(fiveButton: fiveButton)
        setFourButtonConstraints(fourButton: fourButton)
        setSubButtonConstraints(subButton: subButton)
        setThreeButtonConstraints(threeButton: threeButton)
        setTwoButtonConstraints(twoButton: twoButton)
        setOneButtonConstraints(oneButton: oneButton)
        setDotButtonConstraints(dotButton: dotButton)
        setZeroButtonConstraints(zeroButton: zeroButton)
        setEqualToButtonConstraints(equalToButton: equalToButton)
    }
    
    func addToInput(value: String) {
        inputData = inputData + value
        inputLabel.text = inputData
    }
    
    // function to set the constraints for username label
    func setCalculatorUsernameLabelConstraints(calculatorUsernameLabel: UILabel) {
        // Set properties of the label
        calculatorUsernameLabel.text = username
        calculatorUsernameLabel.textColor = .black
        calculatorUsernameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        calculatorUsernameLabel.textAlignment = .left
        calculatorUsernameLabel.numberOfLines = 0
        calculatorUsernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(calculatorUsernameLabel)
        
        // setting constraints to usernameLabel
        NSLayoutConstraint.activate([
            calculatorUsernameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25), // Top constraint
            calculatorUsernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),  // Leading constraint
            // homeUsernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)  // Trailing constraint
        ])
    }
    
    // function to set the constraints for the profileImage icon
    func setLoginImageConstraints(calculatorProfileImageView: UIImageView) {
        // Set up the profile image view if the image exists
        if let profileImage = UIImage(named: "profileImage") {
            calculatorProfileImageView.image = profileImage
        } else {
            print("Image not found!")
            return
        }
        
        calculatorProfileImageView.contentMode = .scaleAspectFit
        calculatorProfileImageView.translatesAutoresizingMaskIntoConstraints = false
        

        calculatorProfileImageView.layer.cornerRadius = 39
        calculatorProfileImageView.clipsToBounds = true
        
        view.addSubview(calculatorProfileImageView) // adding profileImageView to screen
        
        // layout constraints for profileImageView
        NSLayoutConstraint.activate([
            calculatorProfileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10), // Top constraint
            calculatorProfileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0), // Leading constraint
            calculatorProfileImageView.heightAnchor.constraint(equalToConstant: 60), // Height constraint
            calculatorProfileImageView.widthAnchor.constraint(equalToConstant: 60)  // Width constraint
        ])
    }
    
    // function to set the constraints for inputTextField
    func setInputLabelConstraints(inputLabel: UILabel) {
        // set properties of the textField
        inputLabel.text = "5+2"
        inputLabel.textColor = .black
        inputLabel.font = UIFont.boldSystemFont(ofSize: 25)
        inputLabel.textAlignment = .right
        inputLabel.numberOfLines = 0
        inputLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(inputLabel)
                
        // set constraints for usernameTextField (below password text field)
        NSLayoutConstraint.activate([
            inputLabel.topAnchor.constraint(equalTo: self.calculatorUsernameLabel.bottomAnchor, constant: 60),  // vertical spacing with usernameTextField
            inputLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),  // leading constraint
            inputLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // trailing constraint
            inputLabel.heightAnchor.constraint(equalToConstant: 40) // height constraint
        ])
    }
    
    // function to set the constraints for resultTextField
    func setResultLabelConstraints(resultLabel: UILabel) {
        // set properties of the textField
        resultLabel.text = "7"
        resultLabel.textColor = .black
        resultLabel.font = UIFont.boldSystemFont(ofSize: 25)
        resultLabel.textAlignment = .right
        resultLabel.numberOfLines = 0
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(resultLabel)
                
        // set constraints for usernameTextField (below password text field)
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: inputLabel.bottomAnchor, constant: 20),  // vertical spacing with usernameTextField
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),  // leading constraint
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // trailing constraint
            resultLabel.heightAnchor.constraint(equalToConstant: 40) // height constraint
        ])
    }
    
    // function to set the constraints for the clearAll button
    func setclearAllButtonConstraints(clearAllButton: UIButton) {
        // Set up the clearAll button
        clearAllButton.setTitle("AC", for: .normal)
        clearAllButton.setTitleColor(.red, for: .normal)
        clearAllButton.backgroundColor = .black
        clearAllButton.layer.cornerRadius = 0
        clearAllButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(clearAllButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            // Placing the button below the usernameLabel or another visible view
            clearAllButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 60), // Positioned 40 points below the username label
            clearAllButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),  // Leading constraint
            // clearAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // Trailing constraint
            clearAllButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            clearAllButton.widthAnchor.constraint(equalToConstant: 90)  // Height constraint
        ])
        
        // Add an action to the button
        clearAllButton.addTarget(self, action: #selector(clearAllButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the clearAll button
    @objc func clearAllButtonTapped() {
        print("ClearAll button tapped")
        self.inputLabel.text = ""
        self.resultLabel.text = ""
        self.inputData = ""
        self.resultData = ""
    }
    
    // function to set the constraints for the delete button
    func setDelButtonConstraints(delButton: UIButton) {
        // Set up the clearAll button
        delButton.setTitle("DEL", for: .normal)
        delButton.setTitleColor(.red, for: .normal)
        delButton.backgroundColor = .black
        delButton.layer.cornerRadius = 0
        delButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(delButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            // Placing the button below the usernameLabel or another visible view
            delButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 60), // Positioned 40 points below the username label
            delButton.leadingAnchor.constraint(equalTo: self.clearAllButton.trailingAnchor, constant: 2),  // Leading constraint
            // clearAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // Trailing constraint
            delButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            delButton.widthAnchor.constraint(equalToConstant: 90)  // Height constraint
        ])
        
        // Add an action to the button
        delButton.addTarget(self, action: #selector(delButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the delete button
    @objc func delButtonTapped() {
        print("Delete button tapped")
        if (!inputData.isEmpty) {
            inputData.removeLast()
            inputLabel.text = inputData
        }
        else {
            print("Empty input expression!")
        }
    }
    
    // function to set the constraints for the div button
    func setDivButtonConstraints(divButton: UIButton) {
        // Set up the Divide button
        divButton.setTitle("/", for: .normal)
        divButton.setTitleColor(.orange, for: .normal)
        divButton.backgroundColor = .black
        divButton.layer.cornerRadius = 0
        divButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(divButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            // Placing the button below the usernameLabel or another visible view
            divButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 60), // Positioned 60 points below the username label
            divButton.leadingAnchor.constraint(equalTo: self.delButton.trailingAnchor, constant: 2),  // Leading constraint
            // clearAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // Trailing constraint
            divButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            divButton.widthAnchor.constraint(equalToConstant: 90)  // Height constraint
        ])
        
        // Add an action to the button
        divButton.addTarget(self, action: #selector(divButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the delete button
    @objc func divButtonTapped() {
        print("Delete button tapped")
        addToInput(value: "%")
    }
    
    // function to set the constraints for the multiply button
    func setMulButtonConstraints(mulButton: UIButton) {
        // Set up the Multiply button
        mulButton.setTitle("x", for: .normal)
        mulButton.setTitleColor(.orange, for: .normal)
        mulButton.backgroundColor = .black
        mulButton.layer.cornerRadius = 0
        mulButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mulButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            // Placing the button below the usernameLabel or another visible view
            mulButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 60), // Positioned 60 points below the username label
            mulButton.leadingAnchor.constraint(equalTo: self.divButton.trailingAnchor, constant: 2),  // Leading constraint
            // clearAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),  // Trailing constraint
            mulButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            mulButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        mulButton.addTarget(self, action: #selector(mulButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func mulButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "x")
    }
    
    // function to set the constraints for the nine button
    func setNineButtonConstraints(nineButton: UIButton) {
        // Set up the Nine button
        nineButton.setTitle("9", for: .normal)
        nineButton.setTitleColor(.white, for: .normal)
        nineButton.backgroundColor = .black
        nineButton.layer.cornerRadius = 0
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nineButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            nineButton.topAnchor.constraint(equalTo: clearAllButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            nineButton.leadingAnchor.constraint(equalTo: clearAllButton.leadingAnchor),  // Align with clearAllButton's leading edge
            nineButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            nineButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        nineButton.addTarget(self, action: #selector(nineButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func nineButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "9")
    }
    
    // function to set the constraints for the eight button
    func setEightButtonConstraints(eightButton: UIButton) {
        // Set up the Nine button
        eightButton.setTitle("8", for: .normal)
        eightButton.setTitleColor(.white, for: .normal)
        eightButton.backgroundColor = .black
        eightButton.layer.cornerRadius = 0
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eightButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            eightButton.topAnchor.constraint(equalTo: clearAllButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            eightButton.leadingAnchor.constraint(equalTo: delButton.leadingAnchor),  // Align with clearAllButton's leading edge
            eightButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            eightButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        eightButton.addTarget(self, action: #selector(eightButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func eightButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "8")
    }
    
    // function to set the constraints for the eight button
    func setSevenButtonConstraints(sevenButton: UIButton) {
        // Set up the Nine button
        sevenButton.setTitle("7", for: .normal)
        sevenButton.setTitleColor(.white, for: .normal)
        sevenButton.backgroundColor = .black
        sevenButton.layer.cornerRadius = 0
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sevenButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            sevenButton.topAnchor.constraint(equalTo: clearAllButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            sevenButton.leadingAnchor.constraint(equalTo: divButton.leadingAnchor),  // Align with clearAllButton's leading edge
            sevenButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            sevenButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        sevenButton.addTarget(self, action: #selector(sevenButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func sevenButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "7")
    }
    
    // function to set the constraints for the eight button
    func setAddButtonConstraints(addButton: UIButton) {
        // Set up the Nine button
        addButton.setTitle("+", for: .normal)
        addButton.setTitleColor(.orange, for: .normal)
        addButton.backgroundColor = .black
        addButton.layer.cornerRadius = 0
        addButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: clearAllButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            addButton.leadingAnchor.constraint(equalTo: mulButton.leadingAnchor),  // Align with clearAllButton's leading edge
            addButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            addButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func addButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "+")
    }
    
    // function to set the constraints for the nine button
    func setSixButtonConstraints(sixButton: UIButton) {
        // Set up the Nine button
        sixButton.setTitle("6", for: .normal)
        sixButton.setTitleColor(.white, for: .normal)
        sixButton.backgroundColor = .black
        sixButton.layer.cornerRadius = 0
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sixButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            sixButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            sixButton.leadingAnchor.constraint(equalTo: nineButton.leadingAnchor),  // Align with clearAllButton's leading edge
            sixButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            sixButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        sixButton.addTarget(self, action: #selector(sixButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func sixButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "6")
    }
    
    // function to set the constraints for the eight button
    func setFiveButtonConstraints(fiveButton: UIButton) {
        // Set up the Nine button
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(.white, for: .normal)
        fiveButton.backgroundColor = .black
        fiveButton.layer.cornerRadius = 0
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fiveButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            fiveButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            fiveButton.leadingAnchor.constraint(equalTo: eightButton.leadingAnchor),  // Align with clearAllButton's leading edge
            fiveButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            fiveButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        fiveButton.addTarget(self, action: #selector(fiveButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func fiveButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "5")
    }
    
    // function to set the constraints for the eight button
    func setFourButtonConstraints(fourButton: UIButton) {
        // Set up the Nine button
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(.white, for: .normal)
        fourButton.backgroundColor = .black
        fourButton.layer.cornerRadius = 0
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fourButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            fourButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            fourButton.leadingAnchor.constraint(equalTo: sevenButton.leadingAnchor),  // Align with clearAllButton's leading edge
            fourButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            fourButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        fourButton.addTarget(self, action: #selector(fourButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func fourButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "4")
    }
    
    // function to set the constraints for the eight button
    func setSubButtonConstraints(subButton: UIButton) {
        // Set up the Nine button
        subButton.setTitle("-", for: .normal)
        subButton.setTitleColor(.orange, for: .normal)
        subButton.backgroundColor = .black
        subButton.layer.cornerRadius = 0
        subButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            subButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            subButton.leadingAnchor.constraint(equalTo: addButton.leadingAnchor),  // Align with clearAllButton's leading edge
            subButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            subButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        subButton.addTarget(self, action: #selector(subButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func subButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "-")
    }
    
    // function to set the constraints for the nine button
    func setThreeButtonConstraints(threeButton: UIButton) {
        // Set up the Nine button
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.backgroundColor = .black
        threeButton.layer.cornerRadius = 0
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(threeButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            threeButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            threeButton.leadingAnchor.constraint(equalTo: sixButton.leadingAnchor),  // Align with clearAllButton's leading edge
            threeButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            threeButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        threeButton.addTarget(self, action: #selector(threeButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func threeButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "3")
    }
    
    // function to set the constraints for the eight button
    func setTwoButtonConstraints(twoButton: UIButton) {
        // Set up the Nine button
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.backgroundColor = .black
        twoButton.layer.cornerRadius = 0
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(twoButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            twoButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            twoButton.leadingAnchor.constraint(equalTo: fiveButton.leadingAnchor),  // Align with clearAllButton's leading edge
            twoButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            twoButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        twoButton.addTarget(self, action: #selector(twoButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func twoButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "2")
    }
    
    // function to set the constraints for the eight button
    func setOneButtonConstraints(oneButton: UIButton) {
        // Set up the Nine button
        oneButton.setTitle("7", for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.backgroundColor = .black
        oneButton.layer.cornerRadius = 0
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(oneButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            oneButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            oneButton.leadingAnchor.constraint(equalTo: fourButton.leadingAnchor),  // Align with clearAllButton's leading edge
            oneButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            oneButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        oneButton.addTarget(self, action: #selector(oneButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func oneButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "1")
    }
    
    // function to set the constraints for the eight button
    func setDotButtonConstraints(dotButton: UIButton) {
        // Set up the Nine button
        dotButton.setTitle(".", for: .normal)
        dotButton.setTitleColor(.white, for: .normal)
        dotButton.backgroundColor = .black
        dotButton.layer.cornerRadius = 0
        dotButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dotButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            dotButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            dotButton.leadingAnchor.constraint(equalTo: subButton.leadingAnchor),  // Align with clearAllButton's leading edge
            dotButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            dotButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        dotButton.addTarget(self, action: #selector(dotButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func dotButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: ".")
    }
    
    // function to set the constraints for the zero button
    func setZeroButtonConstraints(zeroButton: UIButton) {
        // Set up the Zero button
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.backgroundColor = .black
        zeroButton.layer.cornerRadius = 0
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(zeroButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            zeroButton.topAnchor.constraint(equalTo: threeButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            zeroButton.leadingAnchor.constraint(equalTo: twoButton.leadingAnchor),  // Align with clearAllButton's leading edge
            zeroButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            zeroButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        zeroButton.addTarget(self, action: #selector(zeroButtonTapped), for: .touchUpInside)
    }
    
    // function to add functionality of the multiply button
    @objc func zeroButtonTapped() {
        print("Multiply button tapped")
        addToInput(value: "0")
    }
    
    // function to set the constraints for the zero button
    func setEqualToButtonConstraints(equalToButton: UIButton) {
        // Set up the Zero button
        equalToButton.setTitle("=", for: .normal)
        equalToButton.setTitleColor(.white, for: .normal)
        equalToButton.backgroundColor = .orange
        equalToButton.layer.cornerRadius = 0
        equalToButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(equalToButton)
        
        // Set constraints for the button
        NSLayoutConstraint.activate([
            equalToButton.topAnchor.constraint(equalTo: threeButton.bottomAnchor, constant: 10), // Positioned below clearAllButton
            equalToButton.leadingAnchor.constraint(equalTo: oneButton.leadingAnchor),  // Align with clearAllButton's leading edge
            equalToButton.heightAnchor.constraint(equalToConstant: 50),  // Height constraint
            equalToButton.widthAnchor.constraint(equalToConstant: 90)  // Width constraint
        ])
        
        // Add an action to the button
        equalToButton.addTarget(self, action: #selector(equalToButtonTapped), for: .touchUpInside)
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1)  == 0) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
    
    // function to add functionality of the multiply button
    @objc func equalToButtonTapped() {
        print("EqualTo button tapped")
        let expression = NSExpression(format: inputData)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        resultLabel.text = resultString
    }
    
}
