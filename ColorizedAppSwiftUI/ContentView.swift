//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Александра Лесовская on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = 70.0
    @State private var greenSliderValue = 145.0
    @State private var blueSliderValue = 235.0
    
    @State private var redSliderTextValue = "00.0"
    @State private var greenSliderTextValue = "00.0"
    @State private var blueSliderTextValue = "00.0"
    
    var body: some View {
        VStack(spacing: 20) {
            ColorRectangleView(color: Color(red: redSliderValue / 255, green: greenSliderValue / 255, blue: blueSliderValue / 255))
            HorizontalStackView(sliderValue: $redSliderValue, sliderColor: .red)
            HorizontalStackView(sliderValue: $greenSliderValue, sliderColor: .green)
            HorizontalStackView(sliderValue: $blueSliderValue, sliderColor: .blue)
            Spacer()
        }
        .padding(EdgeInsets(top: 50, leading: 16, bottom: 16, trailing: 16))
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button(">") {
                    
                }
                Button("<") {
                    
                }
                Button("Done") {
                    
                }
            }
        }
    }
        
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HorizontalStackView: View {
    
    @Binding var sliderValue: Double
    let sliderColor: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text(String(format: "%.0f", arguments: [sliderValue]))
                .frame(width: 40)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(sliderColor)
            TextField("255", text: .constant(String(format: "%.0f", arguments: [sliderValue])))
                .frame(width: 60)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
        
}
    

