//
//  mainQuiz.swift
//  Quizzler-iOS13
//
//  Created by Tsiyon Abera on 1/15/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation
struct Quizzlet {
    let quiz = [
        Question(q: "The shortest war in history was between Britain and Zanzibar on August 27, 1896.", a: "True"),
        Question(q: "A group of flamingos is known as a 'pat'", a: "False"),
        Question(q: "Venus is the only planet that rotates clockwise.", a: "True"),
        Question(q: "Octopuses have three hearts.", a: "True"),
        Question(q: "Bananas grow on trees.", a: "False"),
        Question(q: "The inventor of the light bulb, Thomas Edison, was afraid of the dark.", a: "True"),
        Question(q: "The Great Wall of China is visible from the moon.", a: "False"),
        Question(q: "A single sneeze travels 100 miles per hour and shoots 100,000 germs into the air.", a: "True"),
        Question(q: "The Eiffel Tower can be 15 cm taller during the summer.", a: "True"),
        Question(q: "Polar bear skin is black.", a: "True"),
        Question(q: "All the swans in England are owned by the Queen.", a: "True"),
        Question(q: "A snail can sleep for three years.", a: "True")
    ]
    
    var qNumber = 0
    var score = 0
   mutating func checkAnswer(_ answer: String) -> Bool {
        
        if answer == quiz[qNumber].answer{
            score += 1
            return true
        } else{
            return false
        }
        
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestions() -> String {
        return quiz[qNumber].question
        
    }
    
    func getProgress() -> Float{
        let progress = Float(qNumber + 1)/Float(quiz.count)
        return progress
    }
    
   mutating func updateNumber() {
        if qNumber + 1 < quiz.count{
            qNumber += 1
        }else{
            qNumber = 0
            score = 0
        }
        
    }
    
    
}
