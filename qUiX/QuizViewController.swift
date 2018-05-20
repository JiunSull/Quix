//
//  QuizViewController.swift
//  qUiX
//
//  Created by UCode on 5/13/18.
//  Copyright © 2018 Me. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerButton0: UIButton!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!

    let quiz = Quiz(questions: [
        Question(text: "When did the iPhone X come out?", answers: [
            Answer(text: "November 3 2017",  isCorrect: false),
            Answer(text: "November 20 2017",  isCorrect: false),
            Answer(text: "October 12 2017",  isCorrect: false),
            Answer(text: "I don't want to answer this question", isCorrect: true)
        ]),
        Question(text: "When Were You Born", answers: [
            Answer(text: "2000",  isCorrect: false),
            Answer(text: "2008",  isCorrect: false),
            Answer(text: "1",  isCorrect: false),
            Answer(text: "999", isCorrect: true)
        ]),
        Question(text: "What is the meaning of life", answers: [
            Answer(text: "42",  isCorrect: false),
            Answer(text: "This Quiz is Wrong",  isCorrect: false),
            Answer(text: "Why is this a question",  isCorrect: true),
            Answer(text: "I don't know", isCorrect: false)
        ]),
        Question(text: "Why am I making this quiz", answers: [
            Answer(text: "Ucode made him",  isCorrect: false),
            Answer(text: "I don't know",  isCorrect: false),
            Answer(text: "- .... .. ...     --.- ..- .. --..     ... ..- -.-. -.- ...",  isCorrect: true),
            Answer(text: "Why did u have to do this", isCorrect: false)
        ]),
        Question(text: "Is This Question Good or Bad", answers: [
            Answer(text: "Bad",  isCorrect: false),
            Answer(text: "Good",  isCorrect: false),
            Answer(text: "This Quiz shouldn't be alive",  isCorrect: true),
            Answer(text: "YeNo", isCorrect: false)
        ]),
        Question(text: "It Will Get Better Soon", answers: [
            Answer(text: "No",  isCorrect: false),
            Answer(text: "Maybe",  isCorrect: false),
            Answer(text: "Magic 8 Ball says I Doubt it",  isCorrect: false),
            Answer(text: "Why am I alive", isCorrect: true)
        ]),
        Question(text: "Should this Quiz end", answers: [
            Answer(text: "I don't want to answer this dumb question",  isCorrect: true),
            Answer(text: "YESSSS",  isCorrect: false),
            Answer(text: "Magic 8 Ball says No I want this quiz to live You say NOOOOOOO",  isCorrect: false),
            Answer(text: "This Quiz is....", isCorrect: false)
        ]),
        Question(text: "I need 10 Questions", answers: [
            Answer(text: "1 letter answers",  isCorrect: false),
            Answer(text: "no",  isCorrect: false),
            Answer(text: "Dont waste your time",  isCorrect: true),
            Answer(text: "No Plz", isCorrect: false)
        ]),
        Question(text: "B hasn't been answered yet", answers: [
            Answer(text: "No",  isCorrect: false),
            Answer(text: "It has been",  isCorrect: true),
            Answer(text: "Yes",  isCorrect: false),
            Answer(text: "I can't tell", isCorrect: false)
        ]),
        Question(text: "The last question", answers: [
            Answer(text: "Great",  isCorrect: false),
            Answer(text: "Good",  isCorrect: false),
            Answer(text: "B",  isCorrect: true),
            Answer(text: "Yes and No", isCorrect: false)
        ]),
    ])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        show(question: quiz.currentQuestion)
        
    }
    
    func show(question: Question) {
        questionLabel.text = question.text
        answerButton0.setTitle(question.answers[0].text, for: .normal)
        answerButton1.setTitle(question.answers[1].text, for: .normal)
        answerButton2.setTitle(question.answers[2].text, for: .normal)
        answerButton3.setTitle(question.answers[3].text, for: .normal)
    }
    
    @IBAction func check(_ sender: UIButton) {
        
        
        let isCorrect = quiz.currentQuestion.check(index: sender.tag)
        
        
        if isCorrect {
            quiz.increaseScore() 
        }
        
        if quiz.currentQuestionNumber < quiz.questions.count {
            quiz.next()
            show(question: quiz.currentQuestion)
        }
        else {
            print("OUT OF QUESTIONS")
        }
        
    }
    
    
}
