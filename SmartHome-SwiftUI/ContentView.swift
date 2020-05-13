//
//  ContentView.swift
//  SmartHome-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("home").resizable().edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.75), .clear]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button(action: self.handleBack, label: {
                        Image("back")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 30, height: 30, alignment: .leading)
                        
                    })
                    
                    Spacer()
                    VStack {
                        Text("فضای داخلی").foregroundColor(.white).font(.system(size: 20, weight: .bold, design: .rounded))
                        HStack {
                            Text("نمای زنده").foregroundColor(.white)
                            Image("blurBlue").resizable().frame(width: 25, height: 25, alignment: .center)
                        }.padding(.top, 8)
                    }
                    Spacer()
                }.padding(.leading, 10)
                HStack {
                    Spacer()
                    VStack {
                        MenuBadgeView(text: "36 %", image: "waterDrop")
                        MenuBadgeView(text: "21", image: "sun")
                        }.padding()
                }
                Spacer()
                WhiteBlurView()
            }
        }
    }
    
    func handleBack() {
        print("handle back button here")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
