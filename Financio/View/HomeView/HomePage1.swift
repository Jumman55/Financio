//
//  HomePage1.swift
//  Financio
//
//  Created by Jumman Hossen on 27/01/23.
//

import SwiftUI

struct HomePage1: View {
    //MARK: - PROPERTIES
    
    //MARK: -BODY
    var body: some View {
        ZStack{
            Color("Light Gray")
                .ignoresSafeArea()
            VStack{
                mainCard
                    .padding(.top, 72)
                    .padding(.bottom, 44)
                HStack{
                    Text("Transactions")
                        .fontWeight(.bold)
                        .padding(.leading, 36)
                        .font(.title3)
                    Spacer()
                    Text("ViewAll >")
                        .fontWeight(.regular)
                        .foregroundColor(Color("Light Blue"))
                        .padding(.trailing, 36)
                        .font(.body)
                }//:HStack
                ScrollView{
                    LazyVStack{
                        ForEach(1...10, id: \.self){ tran in
                            transactionRow
                                .padding(.top, 5)
                        }
                    }
                }
               
                
            }
        }
        
    }//:bodyView
    //MARK: -Extra sub View
    var mainCard: some View{
        ZStack{
            Rectangle()
                .frame(width: 321, height:168, alignment: .top)
                .overlay(Color.mainCardGradiant3)
                .cornerRadius(24)
                
            VStack{
                Text("Total Expenses")
                    .fontWeight(.regular)
                    .padding(.horizontal, 118)
                    .font(.caption)
                    .foregroundColor(Color("Light Gray"))
                    .padding(.bottom, 16)
                
                
                Text("€750.00")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Light Gray"))
                    .padding(.horizontal, 87)
                    .font(.largeTitle)
                    .gridColumnAlignment(.center)
                
            
            }
            
            
            
        }
    }//:mainCardView
    
    var transactionRow: some View{
        ZStack{
            Rectangle()
                .frame(width: 321, height: 76)
                .overlay(Color.transactionRowGradiant7)
                .cornerRadius(10)
            HStack{
                Text("Logo")
                    .padding([.top, .leading, .bottom], 21.0)
                Text("Food")
                    .padding(.vertical, 21.0)
                    .padding(.leading, 27)
                VStack{
                    Text("-€45.00")
                    Text("27/12/2023")
                }
                .padding(.leading, 80)
                .padding(.trailing, 8)
            }
        }
    }
    
}//: HomePage1

//MARK: -PREVIEW
struct HomePage1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage1()
    }
}
