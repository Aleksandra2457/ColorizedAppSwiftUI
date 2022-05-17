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
    
    var body: some View {
        Color.indigo
            .ignoresSafeArea()
            .overlay {
                VStack(spacing: 20) {
                    RedGreenBlueColorView(
                        redColor: redSliderValue,
                        greenColor: greenSliderValue,
                        blueColor: blueSliderValue
                    )
                    HorizontalStackView(sliderValue: $redSliderValue, sliderColor: .red)
                    HorizontalStackView(sliderValue: $greenSliderValue, sliderColor: .green)
                    HorizontalStackView(sliderValue: $blueSliderValue, sliderColor: .blue)
                    Spacer()
                }
                .padding(EdgeInsets(top: 50, leading: 16, bottom: 16, trailing: 16))
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button(action: {}, label: { Image(systemName: "chevron.up") })
                        Button(action: {}, label: { Image(systemName: "chevron.down") })
                        Button("Done") {
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }
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




