//
//  Answer.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import Foundation
import SwiftUI

class Answer: ObservableObject, Identifiable {

    @Published var isSelected: Bool
    @Published var isSelectable: Bool
    
    private let wrongAnswerColor: Color = Color.wrongAnswerColor
    private let correctAnswerColor: Color = Color.correctAnswerColor
    
    let text: String
    let isCorrectAnswer: Bool
    
    var answerColor: Color {
        isCorrectAnswer ? correctAnswerColor : wrongAnswerColor
    }
        
    init(text: String, isCorrectAnswer: Bool){
        self.text = text
        self.isCorrectAnswer = isCorrectAnswer
        self.isSelectable = true
        self.isSelected = false
    }
    
    public func selectAnswer(){
        if isSelectable {
            isSelected.toggle()
        }
    }
}

