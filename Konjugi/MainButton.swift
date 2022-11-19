//
//  MainButton.swift
//  Konjugi
//
//  Created by Björn Viehmann on 10.06.22.
//

import SwiftUI

struct MainButton: View {
    var text: String

    var body: some View {
        VStack {
            Text(text)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(10)
                .shadow(radius: 8)
        }.padding(.horizontal)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(text: "Start")
    }
}
