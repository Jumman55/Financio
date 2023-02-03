//
//  NavigationBarView.swift
//  Financio
//
//  Created by Jumman Hossen on 03/02/23.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    var title = ""
    @Binding var hasScrolled: Bool
    //MARK: -PREVIEW
    var body: some View {
        ZStack(alignment: .leading){
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 20)
                .opacity(hasScrolled ? 1 : 0)
            HStack {
                Text(title)
                    .font(.largeTitle.bold())
                    .padding(.leading, 20)
                Spacer()
                Image("Avatar 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26, height: 26)
                    .cornerRadius(10)
                    .frame(width: 44, height: 44)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
            }//:Hstack
            .padding(.trailing, 20)
            .frame(height: 70)
            .frame(maxHeight: .infinity, alignment: .top)
            
        }//:ZStack
    }
}

//MARK: -PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(title: "Financio", hasScrolled: .constant(false))
    }
}
