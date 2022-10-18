//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Diwakar Parmar on 18/10/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        if triviaManager.reacheEnd {
            VStack (spacing: 20){
                Text("Trivia Game")
                    .lilacTitle()
                Text("Congratulations, You completed the game!")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }

                
            }.foregroundColor(Color("AccentColor"))
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hue: 1.0, saturation: 0.03, brightness: 0.991))

        } else {
            
            QuestionView().environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView().environmentObject(TriviaManager())
    }
}
