//
//  SliderUIKitView.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct SliderUIKitView: UIViewRepresentable {
    
    @Binding var value: Double
    @Binding var alphaTintColor: CGFloat
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = #colorLiteral(red: 1, green: 0.1010572687, blue: 0.2824620605, alpha: 1)
        slider.alpha = alphaTintColor
        slider.value = Float(value)
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged
        )
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
    }
    
    func makeCoordinator() -> SliderUIKitView.Coordinator {
        Coordinator(value: $value)
    }
}

extension SliderUIKitView {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIKitView(value: .constant(50), alphaTintColor: .constant(0.5))
    }
}
