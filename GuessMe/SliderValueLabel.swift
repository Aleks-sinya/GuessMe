//
//  SliderValueLabel.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let randomValue: Double
    
    var body: some View {
        Text("\(lround(randomValue))")
            .frame(width: 35)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueLabel(randomValue: 77)
    }
}
