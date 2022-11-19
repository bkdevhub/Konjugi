//
//  ViewComponentExtensions.swift
//  Konjugi
//
//  Created by Björn Viehmann on 14.06.22.
//

import Foundation
import SwiftUI

extension View {
    func applyCardDesign() -> some View {
        self.padding(.vertical, 30)
        .background(.white)
        .cornerRadius(15)
        .shadow(radius: 20)
    }

    func mainLinearGradientBackground() -> some View {
        self.background(LinearGradient(
            colors: [Color.gradientBeginBackground, Color.gradientEndBackground],
            startPoint: .top,
            endPoint: .bottom)
        )
    }
}

