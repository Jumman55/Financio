//
//  CategoriesBugetView.swift
//  Financio
//
//  Created by Jumman Hossen on 01/02/23.
//

import SwiftUI

struct CategoriesBugetView: View {
    //MARK: - PROPERTIES
    @State var cate = "Food"
    @State var date = Date()
    @State var showPresentationMode: Bool = false
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ZStack{
                Image("BG3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    
                
                VStack {
                    
                        Button{
                            showPresentationMode = true
                        } label: {
                            AddExpensesButtonView()
                        }
                        .sheet(isPresented: $showPresentationMode){
                            AddDataButton(cate: $cate)
                                .presentationDetents([.medium])
                                .presentationDragIndicator(.visible)
                        }
                        Button{
                            
                        } label: {
                            AddExpensesButtonView(sfImagename: "note.text.badge.plus", titleName: "Note")
                        }
                      
                        Button{
                            
                        } label: {
                            AddExpensesButtonView(sfImagename: "calendar", titleName: "Date")
                        }
                        
                   

                    DatePicker("Choose your date", selection: $date,in: Date()... ,displayedComponents: [.date])
                        .padding(.horizontal, 36)
                   
                }
            
                
            }//:ZStack
            .navigationTitle("Details")
        }//:Navi
        
    }
}


//MARK: -PREVIEW
struct CategoriesBugetView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesBugetView()
    }
}
