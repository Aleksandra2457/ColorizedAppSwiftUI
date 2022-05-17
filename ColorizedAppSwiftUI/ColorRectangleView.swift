//
//  ColorRectangleView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александра Лесовская on 17.05.2022.
//

import SwiftUI

struct ColorRectangleView: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height * 0.2)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 8))
            .foregroundColor(color)
            .cornerRadius(20)
    }
    
}

