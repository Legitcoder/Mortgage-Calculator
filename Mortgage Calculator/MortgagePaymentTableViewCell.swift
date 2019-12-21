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
        paymentLabel.text = mortgagePayment.basePaymentText
        interestPayment.text = mortgagePayment.interestText
        principalPayment.text = mortgagePayment.principalText
    }
    
    var mortgagePayment: MortgagePayment? {
        didSet {
            updateViews()
        }
    }

}
