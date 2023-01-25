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
    let createdAt: Date
}


// Main transaction
struct Transaction{
    let id: String
    let accountID: String
    let amount: Double
    let category: String
    let date: Date
    let note: String?
    let createdAt: Date
}

//For creating Report category based
struct Category{
    let id: String
    let name: String
    let buget: Double
    let createdAt: Date
}

/*
 1. What's wrong in those data models?
 2. How do you gonna create a report by comparing category buget and monthly all expenses by category transaction?
 */
