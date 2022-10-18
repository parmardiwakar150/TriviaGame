//
//  Extensions.swift
//  TriviaGame
//
//  Created by Diwakar Parmar on 17/10/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle () -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
