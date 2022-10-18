//
//  Trivia.swift
//  TriviaGame
//
//  Created by Diwakar Parmar on 18/10/22.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    struct Result: Identifiable, Decodable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        var formattedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Error setting FormattedQuestion: \(error)")
                return ""
            }
        }
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrects = try incorrectAnswers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let answers = correct + incorrects
                return answers.shuffled()
            } catch {
                print("Error setting answers: \(error)")
                return []
            }
        }
        
    }
}
