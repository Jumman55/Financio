//
//  TransactionManageFunc.swift
//  Financio
//
//  Created by Jumman Hossen on 27/01/23.
//

import Foundation
import SwiftUI

    ///This function will return the total amount of all transaction from data
func totalExpenseCount(Transactions: [Transaction]) -> Double{
    var totalExpenses: Double = 0.0
    for tran in Transactions{
        totalExpenses += tran.amount
    }
    return totalExpenses
}


    /// This function will take all transaction and return only category amount sum which given in param
func totalTransactionByCategory(Transactions:[Transaction], category: String) -> Double{
    var totalExpensesByCategory: Double = 0.0
    for tran in Transactions{
        if (tran.category == category){
            totalExpensesByCategory += tran.amount
        }
    }
    return totalExpensesByCategory
}
