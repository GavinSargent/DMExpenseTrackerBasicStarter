//
//  ExpenseHelper.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation

class ExpenseHelper {
    
    /**
     4.2 Create a static function called `calculateTotalSpent` that accepts an array of `Expense` and returns the total amount of money the user spent. Feel free to run the provided test to know if your code is correct.
     */
    static func calculateTotalSpent (expenses: [Expense]) -> Double {
        let sum = expenses.reduce(0) { $0 + $1.amount }
        
        return sum
    }
    
    /**
     4.2 Create a static function called `getExpensesByCategory` that accepts an array of `Expense` and returns a dictionary where each key is a category and each value is an array of `Expense` belonging to that category. Feel free to run the provided test to know if your code is correct.
     */
    
    static func getExpensesByCategory (expenses: [Expense]) -> [String: [Expense]] {

        return Dictionary(grouping: expenses, by: { $0.category })
        
    }
}
