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
    @State var note = ""
    @State var date = Date()
    @State var showPresentationMode0: Bool = false
    @State var showPresentationMode1: Bool = false
    @State var showPresentationMode2: Bool = false
    @State var showPresentationMode3: Bool = false
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
                            showPresentationMode1 = true
                        } label: {
                            AddExpensesButtonView()
                        }
                        .sheet(isPresented: $showPresentationMode1){
                            AddDataCategoryButton(cate: $cate)
                                .presentationDetents([.medium])
                                .presentationDragIndicator(.visible)
                        }
                        Button{
                            showPresentationMode2 = true
                        } label: {
                            AddExpensesButtonView(sfImagename: "note.text.badge.plus", titleName: "Note")
                        }
                        .sheet(isPresented: $showPresentationMode2){
                            AddDataNoteButton(note: $note)
                                .presentationDetents([.large])
                                .presentationDragIndicator(.visible)
                        }
                      
                        Button{
                            showPresentationMode3 = true
                        } label: {
                            AddExpensesButtonView(sfImagename: "calendar", titleName: "Date")
                        }
                        .sheet(isPresented: $showPresentationMode3){
                            AddDataDateButton(date: $date)
                                .presentationDetents([.medium])
                                .presentationDragIndicator(.visible)
                        }
                        
                   
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
