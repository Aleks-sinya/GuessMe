//
//  ContentView.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Double
    @State var alphaTintColor: CGFloat
    
    @State private var sliderValueLabel = Double.random(in: 0...100)
    @State var showAlert = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Пододвиньте слайдер, как можно ближе к: \(lround(sliderValueLabel))")
//                SliderValueLabel(randomValue: sliderValueLabel)
            }
            SliderValuesView(value: $value, alphaTintColor: $alphaTintColor)
            
            CheckResultButton(value: $value,
                              sliderValueLabel: $sliderValueLabel,
                              showAlert: $showAlert)
            .padding()
            
            CancelButtonView(value: $value, sliderValueLabel: $sliderValueLabel)
        } .padding()
    }
    
    private func computerScore() -> Int {
        let difference = abs(sliderValueLabel - value)
        return Int(100 - difference)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 10.5, alphaTintColor: 1)
    }
}
