//
//  MortgagePaymentController.swift
//  Graph
//
//  Created by Moin Uddin on 12/20/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import Foundation

class MortgagePaymentController {
    
    
    init(loan: Double, interest: Double, term: Double, downPayment: Double = 0.0) {
        let deductedLoan = loan - downPayment
        for _ in 1...Int(term*12.0) {
            payments.append(MortgagePayment(loan: deductedLoan, interest: interest, term: term))
        }
    }
    
    var payments: [MortgagePayment] = []
}
