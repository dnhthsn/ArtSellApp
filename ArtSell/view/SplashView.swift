//
//  SplashView.swift
//  ArtSell
//
//  Created by Đinh Thái Sơn on 05/06/2023.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            if self.isActive {
                WelcomeView()
            } else {
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .ignoresSafeArea()
        .background(Color(red: 135/255, green: 137/255, blue: 163/255))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        .animation(.spring())
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
