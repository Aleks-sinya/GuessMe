//
//  CancelButtonView.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct CancelButtonView: View {
    
    @Binding var value: Double
    @Binding var sliderValueLabel: Double
    
    var body: some View {
        Button(action: {
            value = 0
            sliderValueLabel = Double.random(in: 0...100)
        }) {
            Text("Начать заново")
        }
    }
}


struct CancelButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CancelButtonView(value: .constant(77), sliderValueLabel: .constant(1))
    }
}
