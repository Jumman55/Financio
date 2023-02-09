//
//  AddDataButton.swift
//  Financio
//
//  Created by Jumman Hossen on 07/02/23.
//

import SwiftUI

struct AddDataCategoryButton: View {
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

struct AddDataNoteButton: View {
    //MARK: - PROPERTIES
    @Binding var note: String
    @Environment(\.presentationMode) var presentationMode
    //MARK: -BODY
    var body: some View {
        NavigationView {
            ZStack(alignment: .top){
                Color.white.opacity(0.5)
                    .ignoresSafeArea()
                LinearGradient(colors: [.white.opacity(0.5), .white.opacity(0.0)], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                TextField("Write any details", text: $note)
                    .keyboardType(.default)
                    .frame(width: 340, height: 70)
                    .padding(5)
                    .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.linearGradient(colors:[.white.opacity(0.3), .black.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .blendMode(.overlay)
                    }
            }//:ZStack
            .navigationTitle("Note")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()} label:{Text("Done").bold()})
        }//: Navigation
    }
}

struct AddDataDateButton: View {
    //MARK: - PROPERTIES
    @Binding var date: Date
    @Environment(\.presentationMode) var presentationMode
    //MARK: -BODY
    var body: some View {
        NavigationView {
            ZStack{
                Color.white.opacity(0.5)
                    .ignoresSafeArea()
                LinearGradient(colors: [.white.opacity(0.5), .white.opacity(0.0)], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                DatePicker("Choose your date", selection: $date,in: Date().addingTimeInterval(-1000000)... ,displayedComponents: [.date])
                    .datePickerStyle(.graphical)
            }//:ZStack
            .navigationTitle("Date")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()} label:{Text("Done").bold()})
        }//: Navigation
    }
}
