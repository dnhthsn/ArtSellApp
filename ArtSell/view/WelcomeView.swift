//
//  WelcomeView.swift
//  ArtSell
//
//  Created by Đinh Thái Sơn on 05/06/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Text("Welcome to ArtSell !")
                    .foregroundColor(Color(red: 135/255, green: 137/255, blue: 163/255))
                    .font(.system(size: 28, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("A whole comittee for the Art enthousiasts from Art creator to Art collector... ")
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: {
                    InputNameView()
                }, label: {
                    Text("Get Started")
                        .foregroundColor(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                        .padding([.leading, .trailing], 30)
                        .background(Rectangle().fill(Color(red: 135/255, green: 137/255, blue: 163/255)).cornerRadius(35))
                })
            }
            .padding([.leading, .trailing], 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .ignoresSafeArea()
            .background(Image("background")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .ignoresSafeArea())
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
