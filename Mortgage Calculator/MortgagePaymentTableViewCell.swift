//
//  MortgagePaymentTableViewCell.swift
//  Graph
//
//  Created by Moin Uddin on 12/20/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import UIKit

class MortgagePaymentTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var paymentLabel: UILabel!
    
    
    @IBOutlet weak var interestPayment: UILabel!
    
    @IBOutlet weak var principalPayment: UILabel!
    
    
    private func updateViews() {
        guard let mortgagePayment = mortgagePayment else { return }
        paymentLabel.text = String(format: "%.2f", MortgagePayment.basePayment)
        interestPayment.text = String(format: "%.2f", mortgagePayment.interest)
        principalPayment.text = String(format: "%.2f", mortgagePayment.principal)
    }
    
    var mortgagePayment: MortgagePayment? {
        didSet {
            updateViews()
        }
    }

}
