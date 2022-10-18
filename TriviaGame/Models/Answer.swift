//
//  Answer.swift
//  TriviaGame
//
//  Created by Diwakar Parmar on 18/10/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
