//
//  Service.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import Foundation

protocol ConjugationDataService {
    func getConjugationTasks() -> [ConjugationTask]
}
