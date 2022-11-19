//
//  AnswerButton.swift
//  Konjugi
//
//  Created by Björn Viehmann on 10.06.22.
//

import SwiftUI

struct AnswerButton: View {
    @EnvironmentObject var gameManager: GameManager
    
    @ObservedObject var answer: Answer
            
    var body: some View {
        VStack {
            HStack(alignment: .center){
                if answer.isSelected {
                    Image(systemName: answer.isCorrectAnswer ? "checkmark.circle" : "x.circle")
                        .foregroundColor(answer.answerColor)
                } else {
                    Image(systemName: "questionmark.circle")
                }

                Spacer()
                Text(answer.text)
                Spacer()
             }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.answerFieldBackgroundColor)
            .cornerRadius(100)
            .shadow(color: answer.isSelected ? answer.answerColor : .gray, radius: 4)
            .onTapGesture {
                gameManager.selectAnswer(answer: answer)
            }
            .padding(.horizontal)
        }
    }
}

struct AnswerButton_Previews: PreviewProvider {
    
    static let previewAnswer: Answer = Answer(text: "é", isCorrectAnswer: true)
    
    static var previews: some View {
        AnswerButton(answer: previewAnswer)
            .environmentObject(GameManager())
    }
}
