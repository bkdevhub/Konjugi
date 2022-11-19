//
//  SingleConjugationTaskView.swift
//  Konjugi
//
//  Created by Björn Viehmann on 12.06.22.
//

import SwiftUI

struct SingleConjugationTaskView: View {
    
    @EnvironmentObject var gameManager: GameManager

    var body: some View {
        Group {
            VStack(spacing: 10) {
                Text(gameManager.currentConjugationTask.baseVerbTranslation)
                
                Text(gameManager.currentConjugationTask.baseVerb)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                
                Text("#"+gameManager.currentConjugationTask.targetTimeForm)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(gameManager.currentConjugationTask.targetPronoun + " ___?")
                    .font(.title2)

                VStack(spacing: 20) {
                    ForEach(0...gameManager.currentConjugationTask.answers.count-1, id: \.self) { index in
                        AnswerButton(answer: gameManager.currentConjugationTask.answers[index])
                            .environmentObject(gameManager)
                    }
                }.padding()
            }
        }
        .applyCardDesign()
    }
}

struct SingleConjugationTaskView_Previews: PreviewProvider {
    static var previews: some View {
        SingleConjugationTaskView()
            .environmentObject(GameManager())
    }
}
