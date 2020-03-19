//
//  MortgagePayment.swift
//  Graph
//
//  Created by Moin Uddin on 12/19/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import Foundation


class MortgagePayment {
    
    static var loan: Double = 0.0;
    static var i : Double = 0.0;
    static var basePayment = 0.0
    
    var interest: Double
    var principal: Double

    init(loan: Double, interest: Double, term: Double) {
        if MortgagePayment.i == 0.0 { MortgagePayment.i = interest/12.0 }
        if MortgagePayment.loan == 0.0 { MortgagePayment.loan = loan }
        let numerator = (MortgagePayment.loan*(MortgagePayment.i))
        let denominator = (1 - pow(1 + MortgagePayment.i, -(12.0)*(term)))
        if MortgagePayment.basePayment == 0.0 { MortgagePayment.basePayment = (numerator/denominator)}
        let payment = (numerator/denominator)
        let interest = (MortgagePayment.i)*MortgagePayment.loan
        var principal = payment - interest
        principal += MortgagePayment.basePayment - payment
        self.interest = interest
        self.principal = principal
        MortgagePayment.loan = MortgagePayment.loan - principal
    }
    
    var interestText: String {
        return String(format: "%.2f", self.interest)
    }
    
    var principalText: String {
        return String(format: "%.2f", self.principal)
    }
    
    var basePaymentText: String {
        return String(format: "%.2f", MortgagePayment.basePayment)
    }
    
    
    
}
