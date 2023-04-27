//
//  ExpenseCell.swift
//  DMExpenseTrackerBasic
//
//  Created by Gavin Sargent on 4/26/23.
//

import UIKit

class ExpenseCell: UITableViewCell {

    
    /**
     10.1 Connect the UILabels to the code.
     */
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    /**
     11.1 Have the UILabels display the title and amount of the passed`Expense`.
     */
    func set(expense: Expense) {
        titleLabel.text = expense.title
        amountLabel.text = String(expense.amount.formatted(.currency(code: "USD")))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
