//
//  DataProvider.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import Foundation

struct MockAPI : ConjugationDataService {
    func getConjugationTasks() -> [ConjugationTask] {
        return [
            ConjugationTask(baseVerbTranslation: "gehen", baseVerb: "ir", targetTimeForm: "Presente", targetPronoun: "Você", answers: returnShuffledAnswers(correctAnswer: "vai", wrongAnswers: ["vao", "vir", "vou"])),
            ConjugationTask(baseVerbTranslation: "sein", baseVerb: "ser", targetTimeForm: "Presente", targetPronoun: "Nós", answers: returnShuffledAnswers(correctAnswer: "somos", wrongAnswers: ["vamos", "é", "sou"])),
            ConjugationTask(baseVerbTranslation: "machen", baseVerb: "fazer", targetTimeForm: "Pretérito Perfeito", targetPronoun: "Eu", answers: returnShuffledAnswers(correctAnswer: "fiz", wrongAnswers: ["faz", "faço", "fazia"])),
            ConjugationTask(baseVerbTranslation: "möchten", baseVerb: "querer", targetTimeForm: "Presente", targetPronoun: "Tu", answers: returnShuffledAnswers(correctAnswer: "queres", wrongAnswers: ["quer", "querem", "queria"])),
            ConjugationTask(baseVerbTranslation: "kaufen", baseVerb: "comprar", targetTimeForm: "Pretérito Imperfeito", targetPronoun: "eles/elas", answers: returnShuffledAnswers(correctAnswer: "compravam", wrongAnswers: ["compra", "compramos", "compraram"]))
        ].shuffled()
    }
    
    private func returnShuffledAnswers(correctAnswer: String, wrongAnswers:[String]) -> [Answer]{
        var answers: [Answer] = []
        
        wrongAnswers.forEach { wrongAnswer in
            answers.append(Answer(text: wrongAnswer, isCorrectAnswer: false))
        }
        
        answers.append(Answer(text: correctAnswer, isCorrectAnswer: true))
        
        return answers.shuffled()
    }
}









//private func returnAnswer(_ text: String, _ isCorrect: Bool = false) -> Answer {
//    return Answer(text: text, isCorrectAnswer: isCorrect)
//}
