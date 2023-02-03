//
//  QuizzBrain.swift
//  Quizzler-iOS13
//
//  Created by Djinsolobzik on 24.11.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let arrayQuestions = [
       
         Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    
    var numQuestion = 0
    var score = 0
    func getAnswerButton() -> [String] {
        return arrayQuestions[numQuestion].answer
    }
    
   mutating func actualAnswer(_ userAnswer: String) -> Bool {
        if arrayQuestions[numQuestion].correctAnswer == userAnswer {
            score += 1
           return true
        } else {
            return false
        }
    }
    
    func getQuestion() -> String {
        let text = arrayQuestions[numQuestion].text
        return text
    }
    
    func progress() -> Float {
        let progressValue = Float(numQuestion + 1)/Float(arrayQuestions.count)
        return progressValue
    }
    
    mutating func nextQuestion() {
        if numQuestion < arrayQuestions.count - 1 {
            numQuestion += 1
            
        } else {
            numQuestion = 0
            score = 0
        }
    }
    func getScore() -> Int  {
        return score
   
    }
}
