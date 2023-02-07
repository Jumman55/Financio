//
//  AddDataButton.swift
//  Financio
//
//  Created by Jumman Hossen on 07/02/23.
//

import SwiftUI

struct AddDataButton: View {
    //MARK: - PROPERTIES
    @Binding var cate: String
    @Environment(\.presentationMode) var presentationMode
    //MARK: -BODY
    var body: some View {
        NavigationView {
            ZStack{
                Color.white.opacity(0.5)
                    .ignoresSafeArea()
                LinearGradient(colors: [.white.opacity(0.5), .white.opacity(0.0)], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Picker("Choose a category", selection: $cate){
                    ForEach(categories, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.wheel)
            }//:ZStack
            .navigationTitle("Category")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()} label:{Text("Done").bold()})
        }//: Navigation
    }
}

//MARK: -PREVIEW
//struct AddDataButton_Previews: PreviewProvider {
//    static var previews: some View {
//        AddDataButton()
//    }
//}
