//
//  BlueButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//
import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(CardsGradientStyle())
            .foregroundColor(.white)
            .cornerRadius(40)
            .padding(.horizontal, 40)
            //.frame(width: 150, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

//struct BlueButton: View {
//    var body: some View {
//        Button(<#T##title: StringProtocol##StringProtocol#>, action: {})
//            .buttonStyle(BlueButtonConfig)
//    }
//}
//
//struct BlueButton_Previews: PreviewProvider {
//    static var previews: some View {
//        Button("Concluir", action: {})
//            .buttonStyle(BlueButton)
//    }
//}
