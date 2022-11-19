//
//  CorrectAnswersInfo.swift
//  Konjugi
//
//  Created by Björn Viehmann on 14.06.22.
//

import SwiftUI

struct ScoreInfo: View {
    
    var correctAnswers: Int
    
    var body: some View {
        
        ZStack {
            Image(systemName: "shield.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32, alignment: .center)
                .foregroundColor(Color.accentColor)
                
            Text(String(correctAnswers))
                .fontWeight(.heavy)
                .font(.subheadline)
                .foregroundColor(.white)
        }
    }
}

struct CorrectAnswersInfo_Previews: PreviewProvider {
    static var previews: some View {
        ScoreInfo(correctAnswers: 11)
    }
}
