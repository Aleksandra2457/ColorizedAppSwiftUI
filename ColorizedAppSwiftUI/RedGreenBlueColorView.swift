//
//  RedGreenBlueColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александра Лесовская on 17.05.2022.
//

import SwiftUI

struct RedGreenBlueColorView: View {
    
    var redColor: Double
    var greenColor: Double
    var blueColor: Double
    
    var body: some View {
        Color(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255)
            .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height * 0.2)
            .clipShape(Rectangle())
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
            .cornerRadius(15)
    }
}

struct MainRGBView_Previews: PreviewProvider {
    static var previews: some View {
        RedGreenBlueColorView(redColor: 77, greenColor: 77, blueColor: 77)
    }
}
