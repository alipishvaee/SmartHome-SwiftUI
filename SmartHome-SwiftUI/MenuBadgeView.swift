//
//  MenuBadgeView.swift
//  SmartHome-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct MenuBadgeView: View {
    var text: String
    var image: String
    var body: some View {
        
        VStack {
            Image(image).resizable().frame(width: 40, height: 40).padding(.top,5)
            Text(text)
            
        }
        .frame(width: 60, height: 80, alignment: .top)
        .background(Color.white.opacity(0.7))
        .cornerRadius(10)
    }
}

struct MenuBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBadgeView(text: "۳۶ ٪", image: "sun")
    }
}
