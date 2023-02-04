//
//  ReportsView.swift
//  Financio
//
//  Created by Jumman Hossen on 03/02/23.
//

import SwiftUI
import Charts

struct ReportsView: View {
    //MARK: - PROPERTIES
   
    
    //MARK: -BODY
    var body: some View {
        ZStack {
            Color.mainCardGradiant3
                .overlay(.ultraThinMaterial)
                .blur(radius: 50)
                .ignoresSafeArea()
            VStack {
                Text("Monthly Report")
                    .font(.title.bold())
                    .padding(.horizontal)
                    .padding(.vertical, 2)
                    .frame(alignment: .center)
                    .background(.ultraThinMaterial.opacity(0.30))
                    .cornerRadius(30)
                Chart{
                    ForEach(transctions){ tran in
                      BarMark(
                            x: .value("Category", tran.category),
                            y: .value("Total Expenses", tran.amount)
                        )
                      .foregroundStyle(Color.green.opacity(0.7))
                    }
                    
                    ForEach(bugets){ b in
                        BarMark(
                            x: .value("Category", b.name),
                            y: .value("Total Expenses", b.buget)
                        )
                        .foregroundStyle(Color.blue.opacity(0.7))
                        
                        
                    }
                    
                    
                }//charts
                .frame(height: 400)
            .chartLegend(position: .top)
            }//:VStack
            
        }//:ZStack
    }
}

//MARK: -PREVIEW
struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView()
    }
}
