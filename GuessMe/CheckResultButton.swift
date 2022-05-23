//
//  CheckResultButton.swift
//  GuessMe
//
//  Created by Алексей Синяговский on 23.05.2022.
//

import SwiftUI

struct CheckResultButton: View {
    @Binding var value: Double
    @Binding var sliderValueLabel: Double
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action: { showAlert = true } ) {
            Text("Проверить ответ")
        }
        
        .alert(isPresented: .constant(showAlert)) {
            Alert(
                title: Text("Ваш результат"),
                  message: Text("\(computerScore()) баллов"),
                  dismissButton: .cancel()
            )
            
        }

    }
    private func computerScore() -> Int {
        let difference = abs(sliderValueLabel - value)
        return Int(100 - difference)
    }
}

struct CheckResultButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckResultButton(
            value: .constant(15),
            sliderValueLabel: .constant(15),
            showAlert: .constant(true)
        )
    }
}
