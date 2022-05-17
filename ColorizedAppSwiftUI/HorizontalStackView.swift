//
//  HorizontalStackView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александра Лесовская on 17.05.2022.
//

import SwiftUI

struct HorizontalStackView: View {
    
    @Binding var sliderValue: Double
    
    let sliderColor: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text(String(format: "%.0f", arguments: [sliderValue]))
                .frame(width: 40)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(sliderColor)
            TextField("0-255", value: $sliderValue, formatter: NumberFormatter())
                .frame(width: 80)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
        
}
