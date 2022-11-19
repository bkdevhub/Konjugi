//
//  GameManagerView.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import SwiftUI

struct GameManagerView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        if gameManager.gameFinished {
            ResultView(correctAnswers: gameManager.score, countAnswers: gameManager.conjugationsCount)
                .environmentObject(gameManager)
        } else {
            VStack {
                VStack(spacing: 5) {
                    
                    VStack{
                        ScoreInfo(correctAnswers: gameManager.score)
                        
                        ProgressInfo(text: gameManager.conjugationProgressInformation)
                    }
                    Spacer()
                  
                    SingleConjugationTaskView()
                        .environmentObject(gameManager)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Button {
                        gameManager.nextConjugation()
                    } label: {
                        MainButton(text: "Weiter")
                    }
                }
                .navigationBarHidden(true)
            }.mainLinearGradientBackground()
        }
    }
}

struct GameManagerView_Previews: PreviewProvider {
    static var previews: some View {
        GameManagerView()
            .environmentObject(GameManager())
    }
}
