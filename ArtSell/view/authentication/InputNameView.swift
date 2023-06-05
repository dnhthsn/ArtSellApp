//
//  InputNameView.swift
//  ArtSell
//
//  Created by Đinh Thái Sơn on 05/06/2023.
//

import SwiftUI

struct InputNameView: View {
    var body: some View {
        VStack {
            
        }
        .padding([.leading, .trailing], 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .ignoresSafeArea()
        .background(Image("background")
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .ignoresSafeArea())
        .navigationBarBackButtonHidden(true)
    }
    
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView()
    }
}
