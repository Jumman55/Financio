//
//  BasicDataModel.swift
//  Financio
//
//  Created by Jumman Hossen on 25/01/23.
//

import Foundation

// For individual account
struct Account{
    let id: String
    let email: String
    let password: String
    let createdAt: String
}


// Main transaction
struct Transaction: Identifiable{
    let id: Int
    let accountID: Int
    let amount: Double
    let category: String
    let date: String
    let note: String
    let createdAt: String
}

//For creating Report category based
struct Category: Identifiable{
    let id: Int
    let name: String
    let buget: Double
    let createdAt: String
}

/*
 1. What's wrong in those data models?
 2. How do you gonna create a report by comparing category buget and monthly all expenses by category transaction?
 */
