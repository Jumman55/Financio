//
//  HomePage1.swift
//  Financio
//
//  Created by Jumman Hossen on 27/01/23.
//

import SwiftUI

struct HomePage1: View {
    //MARK: - PROPERTIES
    @State var showDetailsView = false
    //MARK: -BODY
    var body: some View {
        ZStack{
            Color("Light Gray")
                .ignoresSafeArea()
                .blur(radius: 3, opaque: true)
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
                    Button{
                         showDetailsView = true
                    } label:
                    {
                        Text("View All >")
                            .fontWeight(.regular)
                            .foregroundColor(Color("Light Blue"))
                            .padding(.trailing, 36)
                        .font(.body)
                    }
                    .sheet(isPresented: $showDetailsView){
                        CategoriesBugetView()
                    }
                }//:HStack
                ScrollView{
                    LazyVStack{
                        ForEach(transctions, id: \.id){ tran in
                            TransactionsRow(transaction: tran)
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
                .shadow(radius: 10)

                
                
            VStack{
                Text("Total Expenses")
                    .fontWeight(.regular)
                    .padding(.horizontal, 118)
                    .font(.caption)
                    .foregroundColor(Color("Light Gray"))
                    .padding(.bottom, 16)
                
                
                Text("€\(Int(totalExpenseCount(Transactions: transctions)))"+".00")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Light Gray"))
                    .padding(.horizontal, 87)
                    .font(.largeTitle)
                    .gridColumnAlignment(.center)
                
            
            }
            
            
            
        }
    }//:mainCardView

    
}//: HomePage1

struct TransactionsRow: View{
    //MARK: - TransactionRow PROPERTIES
    var transaction: Transaction
    //MARK: -Body
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 321, height: 76)
                .overlay(Color.transactionRowGradiant7)
                .cornerRadius(10)
                .shadow(radius: 6)
                .blur(radius: 1)
                
            
            ForEach(transctions, id: \.id){ tran in
                HStack{
                    Text("Logo")
                        .padding([.top, .leading, .bottom], 21.0)
                    Text("\(transaction.category)")
                        .padding(.vertical, 21.0)
                        .padding(.leading, 27)
                    VStack{
                        Text("€\(Int(transaction.amount))"+".00")
                            .font(.caption)
                        Text("\(transaction.date)")
                            .font(.caption2)
                    }
                    .padding(.leading, 80)
                    .padding(.trailing, 8)
                }
            }
        }
    }
}

//MARK: -PREVIEW
struct HomePage1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage1()
    }
}
