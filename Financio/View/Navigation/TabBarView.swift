//
//  TabBarView.swift
//  Financio
//
//  Created by Jumman Hossen on 03/02/23.
//

import SwiftUI

struct TabBarView: View {
    //MARK: - PROPERTIES
    @State var selectedTab: TabItems = .home
    
    //MARK: -PREVIEW
    var body: some View {
        ZStack(alignment: .bottom){
            Group{
                switch selectedTab {
                    case .home:
                        HomePage1()
                    case .add:
                        CategoriesBugetView()
                    case .report:
                        ContentView()
                }
            }//:Group
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            tabButtons
                .padding(.horizontal, 8)
                .padding(.top, 14)
                .frame(height: 88, alignment: .top)
                .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 34, style: .continuous))
                .overlay{
                    RoundedRectangle(cornerRadius: 34)
                        .stroke(.linearGradient(colors:[.white.opacity(0.3), .black.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .blendMode(.overlay)
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            
        }//:ZStack
    }
    
    var tabButtons: some View{
        HStack{
            ForEach(TabItems.allCases, id: \.self){ item in
                Button{
                    selectedTab = item.self
                } label: {
                    VStack(spacing: 0.0){
                        Image(systemName: item.iconName)
                            .symbolVariant(.fill)
                            .font(.title2.bold())
                            .frame (width: 44, height: 29)
                        Text(item.title)
                            .font(.footnote)
                            .lineLimit (1)
                    }//:VStack
                    .frame(maxWidth: .infinity)
                }
                .foregroundStyle(selectedTab == item.self ? .primary : .secondary)
                
            }
            
        }//:HStack
    }//:tabButtons
    
     
}


//MARK: -PREVIEW
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
