//
//  PrimaryButton.swift
//  TriviaGame
//
//  Created by Diwakar Parmar on 17/10/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var backgroundColor: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .font(.headline)
            .bold()
            .padding()
            .padding(.horizontal)
            .background(backgroundColor)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
