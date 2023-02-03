//
//  DetailsTransactionView.swift
//  Financio
//
//  Created by Jumman Hossen on 03/02/23.
//

import SwiftUI

struct DetailsTransactionView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: -PREVIEW
    var body: some View {
        NavigationView{
            ZStack{
                Color.transactionRowGradiant7
                    .ignoresSafeArea()
                    .blur(radius: 50, opaque: true)
                ScrollView{
                    LazyVStack{
                        ForEach(transctions, id: \.id){ tran in
                            TransactionsRow(transaction: tran)
                                .padding(.top, 5)
                        }
                    }
                }//scroll
            
           }//:ZStack
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()} label:{Text("Done").bold()})
       }//:Navi
    }
}

//MARK: -PREVIEW
struct DetailsTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsTransactionView()
    }
}
