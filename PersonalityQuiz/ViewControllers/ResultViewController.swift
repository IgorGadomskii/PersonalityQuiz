

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var answerDescription: UILabel!
    @IBOutlet weak var answerText: UILabel!
    
    
    var answers: [Answer]!
    var animal: Animal!

    override func viewDidLoad() {
        super.viewDidLoad()
        answerText.text = "Вы - \(lookingForAnAnswer().rawValue)"
        answerDescription.text = lookingForAnAnswer().definition
        navigationItem.hidesBackButton = true
    }
    
    private func lookingForAnAnswer() -> Animal {
        
        var dogs = [Animal]()
        var cats = [Animal]()
        var rabbits = [Animal]()
        var turtles = [Animal]()
        
        for answer in answers {
                if answer.animal == .dog {
                    dogs.append(answer.animal)
                } else if answer.animal == .cat {
                    cats.append(answer.animal)
                } else if answer.animal == .rabbit {
                    rabbits.append(answer.animal)
                }else if answer.animal == .turtle {
                    turtles.append(answer.animal)
                }
            }
        
        let dogsCount = dogs.count
        let catsCount = cats.count
        let rabbitsCount = rabbits.count
        let turtlesCount = turtles.count
        
        let frequentAnswers = [dogsCount, catsCount, rabbitsCount, turtlesCount]
        let theAnswer = frequentAnswers.max()
        
        
        if theAnswer == dogsCount {
            animal = Animal.dog
        } else if theAnswer == catsCount {
            animal =  Animal.cat
        } else if theAnswer == rabbitsCount {
            animal = Animal.rabbit
        } else if theAnswer == turtlesCount {
            animal = Animal.turtle
        }
        
        return animal
    }
}
