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
            Text(sliderValue.string)
                .frame(width: 40)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(sliderColor)
            TextField("0-255", text: $sliderValue.string)
                .frame(width: 80)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
                .onChange(of: sliderValue) { _ in sliderValue > 255 ? sliderValue = 255 : nil }
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
        
}

extension Double {
    var string: String {
        get { String(format: "%.f", self) }
        set { self = Double(newValue) ?? 0 }
    }
}

struct HorizontalStackView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStackView(sliderValue: .constant(20.0), sliderColor: .red)
    }
}
