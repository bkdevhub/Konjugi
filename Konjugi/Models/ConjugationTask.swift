//
//  ConjugationTask.swift
//  Konjugi
//
//  Created by Björn Viehmann on 12.06.22.
//

import Foundation

class ConjugationTask: ObservableObject {
    public var baseVerbTranslation: String
    public var baseVerb: String
    public var targetTimeForm: String
    public var targetPronoun: String
    public var answers: [Answer] = []
    
    init(baseVerbTranslation: String, baseVerb: String, targetTimeForm: String, targetPronoun:String, answers: [Answer]){
        self.baseVerbTranslation = baseVerbTranslation
        self.baseVerb = baseVerb
        self.targetPronoun = targetPronoun
        self.targetTimeForm = targetTimeForm
        self.answers = answers
    }
    
    func showCorrectAnswer() {
        answers.forEach { answer in
            if answer.isCorrectAnswer {
                answer.isSelected = true
            }
        }
    }
    
    func selectAllAnswers() {
        answers.forEach { answer in
            answer.isSelected = true
        }
    }
}
