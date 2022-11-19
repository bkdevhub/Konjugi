//
//  ProgressInfo.swift
//  Konjugi
//
//  Created by Björn Viehmann on 14.06.22.
//

import SwiftUI

struct ProgressInfo: View {
    var text: String
    
    var body: some View {
        VStack {
            Text(text)
                .fontWeight(.heavy)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .foregroundColor(.white)
        }
        .padding(.horizontal)
        .frame(minWidth: .leastNormalMagnitude , alignment: .center)
        .background(Color.accentColor)
        .foregroundColor(.white)
        .cornerRadius(50)
        .padding()
    }
}

struct ProgressInfo_Previews: PreviewProvider {
    static var previews: some View {
        ProgressInfo(text: "1 von 24")
    }
}
