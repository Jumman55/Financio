//
//  ContentView.swift
//  Financio
//
//  Created by Jumman Hossen on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List{
                ForEach(categories, id: \.self){ cat in
                    HStack{
                        Text("\(cat)")
                        Spacer()
                        Text("\(Int(totalTransactionByCategory(Transactions: transctions, category: cat)))" + ".00€")
                        }
                }

            }
            }

        }
    
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
