//
//  Quiz.swift
//  qUiX
//
//  Created by UCode on 4/29/18.
//  Copyright © 2018 Me. All rights reserved.
//

import Foundation



class Quiz {
    var questions: [Question]
    var score: Int
    var currentQuestionIndex: Int
    
    var currentQuestionNumber: Int {
        return currentQuestionIndex + 1
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    init(questions: [Question]) {
        self.questions = questions
        score = 0
        currentQuestionIndex = 0
    }
    
    func reset() {
        score = 0
        currentQuestionIndex = 0
    }
    
    func next() {
        currentQuestionIndex += 1
    }
    
    func increaseScore() {
        score += 1
    }
    
}

