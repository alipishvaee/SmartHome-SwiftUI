//
//  WhiteBlurView.swift
//  SmartHome-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct WhiteBlurView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(UIColor.white.withAlphaComponent(0.6))
                HStack {
                    Button(action: self.handleSpeaker, label: {
                        Image("audio")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 35, height: 35, alignment: .center)
                    })
                    
                    Button(action: self.handleMicrophone, label: {
                        Image("microphone")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 40, height: 40, alignment: .center)
                            .padding(.leading, 30)
                    })
    
                    Button(action: self.handleLights, label: {
                        Image("lightoff")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 40, height: 40, alignment: .center)
                            .padding(.leading, 30)
                    })
                }
            }
            .cornerRadius(30)
            .frame(height: 70, alignment: .center)
            .padding([.leading,.trailing], 50)            
        }
    }
    
    func handleSpeaker() {
        print("set handle Speaker method here")
    }
    
    func handleMicrophone() {
        print("set handle Microphone method here")
    }
    
    func handleLights() {
        print("set handle Lights method here")
    }
    
}

struct WhiteBlurView_Previews: PreviewProvider {
    static var previews: some View {
        WhiteBlurView()
    }
}
