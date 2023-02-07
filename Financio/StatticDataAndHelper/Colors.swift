//
//  Colors.swift
//  Financio
//
//  Created by Jumman Hossen on 27/01/23.
//

import SwiftUI

extension Color{
    static let mainCardGradiant3 = LinearGradient(gradient: Gradient(colors: [Color("Gradiant3_1"),Color("Gradiant3_2"),Color("Gradiant3_3")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let transactionRowGradiant7 = LinearGradient(gradient: Gradient(colors: [Color("Gradiant7_1"), Color("Gradiant7_2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let lavender = Color(red: 217/255, green: 175/255, blue: 217/255)
    static let babyBlue = Color(red: 151/255, green: 217/255, blue: 225/255)
    static let categoryGradiant = LinearGradient(gradient: Gradient(colors: [.lavender, .babyBlue]), startPoint: .leading, endPoint: .trailing)
    

}
