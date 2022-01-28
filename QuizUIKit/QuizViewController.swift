import UIKit

// Structs are Value types, Classes are reference types
//     Value type examples: Integers, Bools, Doubles...
struct Question {
    var prompt: String
}

class QuizViewController: UIViewController {
    
    @IBOutlet weak var prompt: UILabel!
    
    @IBOutlet weak var n: UILabel!
    
    var questionBank: [Question] = [
        Question(prompt: "Structs are value types"),
        Question(prompt: "Classes are reference types"),
        Question(prompt: "Storyboards are edited in InterfaceBuilder"),
        Question(prompt: "Value types are intergers, booleans, and strings")
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func button(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex >= questionBank.count {
            questionBank = questionBank.shuffled()
            currentQuestionIndex = 0
        }
        updateView()
        add()
    }

    // Lifecycle method, this one gets called just once
    override func viewDidLoad() {
        super.viewDidLoad()
       
        prompt.text = "Hello World!"
    }
    
    func updateView() {
        prompt.text = questionBank[currentQuestionIndex].prompt
    }
    
    var count = 0
    
    func add() {
        count = count + 1
        n.text = "\(count)"
    }
    

    
}

