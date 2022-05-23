//
//  SwiftValuesView.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct SliderValuesView: View {
    
    @Binding var value: Double
    @Binding var alphaTintColor: CGFloat
    
    var body: some View {
        HStack {
            Text("0")
            SliderUIKitView(value: $value, alphaTintColor: $alphaTintColor)
            Text("100")
        }
    }
}

struct SliderValuesView_Previews: PreviewProvider {
    static var previews: some View {
        SliderValuesView(value: .constant(50), alphaTintColor: .constant(1))
    }
}
