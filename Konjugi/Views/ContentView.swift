//
//  ContentView.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        NavigationView {
            VStack {
                Group {
                    VStack(spacing: 50) {
                        VStack(spacing: 10) {
                            Text("Willkommen bei \nKonjugi")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text("Bist du bereit ein paar Verben zu konjugieren? ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                
           
                        }
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)

                        NavigationLink {
                            GameManagerView()
                                .environmentObject(gameManager)
                        } label: {
                            MainButton(text: "Start")
                        }
                    }
                }
                .applyCardDesign()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .mainLinearGradientBackground()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GameManager())
    }
}
