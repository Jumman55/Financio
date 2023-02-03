//
//  TabBarModel.swift
//  Financio
//
//  Created by Jumman Hossen on 03/02/23.
//

import Foundation
import SwiftUI

enum TabItems: CaseIterable{
    case home
    case add
    case report
    
    var title: String{
        switch self{
            case .home:
                return "Home"
            case .add:
                return "Transaction"
            case .report:
                return "Report"
        }
    }
    
    var iconName: String{
        switch self {
            case .home:
                return "house"
            case .add:
                return "note.text.badge.plus"
            case .report:
                return "chart.xyaxis.line"
        }
    }
    var color: Color{
        switch self {
            case .home:
                return .teal
            case .add:
                return .blue
            case .report:
                return .pink
        }
    }
}
