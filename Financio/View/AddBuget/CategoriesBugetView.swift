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
    @Environment(\.presentationMode) var presentationMode
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ZStack{
                Color.mainCardGradiant3
                    .ignoresSafeArea()
                    .overlay(.thinMaterial )
                    .blur(radius: 30)
                    
                
                VStack {
                    HStack {
                        Text("Choose a Category")
                        Spacer()
                        Picker("Choose a Category", selection: $cate) {
                            ForEach(categories, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.automatic)
                    }//:HStack
                    .padding(.horizontal, 36)
                    .padding(.bottom, 20)

                    DatePicker("Choose your date", selection: $date,in: Date()... ,displayedComponents: [.date])
                        .padding(.horizontal, 36)
                   
                }
            
                
            }//:ZStack
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()} label:{Text("Done").bold()})
        }//:Navi
        
    }
}


//MARK: -PREVIEW
struct CategoriesBugetView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesBugetView()
    }
}
