//
//  RedGreenBlueColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александра Лесовская on 17.05.2022.
//

import SwiftUI

struct RedGreenBlueColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .frame(height: 130)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
            )
    }
}

struct RedGreenBlueColorView_Previews: PreviewProvider {
    static var previews: some View {
        RedGreenBlueColorView(red: 77, green: 77, blue: 77)
    }
}
