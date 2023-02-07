//
//  AddExpensesButtonView.swift
//  Financio
//
//  Created by Jumman Hossen on 07/02/23.
//

import SwiftUI

struct AddExpensesButtonView: View {
        //MARK: - PROPERTIES
    var sfImagename: String = "checklist"
    var titleName: String = "Category"
        //MARK: -BODY
    var body: some View {
        ZStack{
//            Color.white.opacity(0.3)
//                .blur(radius: 2)
//                .background(.ultraThinMaterial)
//                .shadow(radius: 10)
                
            HStack{
                Image(systemName: sfImagename)
                    .font(.title)
                Spacer()
                Text(titleName)
                
                    .font(.title2)
            }
            .padding()
            .foregroundStyle(.primary)
            
        }//:ZStack
        .frame(width: 340, height: 70)
        .padding(5)
        .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay{
            RoundedRectangle(cornerRadius: 20)
                .stroke(.linearGradient(colors:[.white.opacity(0.3), .black.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .blendMode(.overlay)
        }
        
    
    }
}

//MARK: -PREVIEW
struct AddExpensesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpensesButtonView()
    }
}
