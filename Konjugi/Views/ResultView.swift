//
//  ResultView.swift
//  Konjugi
//
//  Created by Björn Viehmann on 12.06.22.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var correctAnswers: Int
    var countAnswers: Int
    
    var body: some View {
        VStack {
            VStack(spacing: 10){
                Text("Geschafft!").font(.title).fontWeight(.bold)
                Text("Dein Ergebnis:")
                Text("\(correctAnswers) von \(countAnswers)")
                Text("richtig konjugiert.")
                
                Button {
                    gameManager.restartGame()
                } label: {
                    MainButton(text: "Restart")
                }
                .padding(.vertical)
            }
            .applyCardDesign()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .mainLinearGradientBackground()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(correctAnswers: 1, countAnswers: 10)
            .environmentObject(GameManager())
    }
}
