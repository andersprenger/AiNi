//
//  BlueButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//
import SwiftUI

struct BlueButton: View {
    
    var title: String
//    @Binding var value: String
    
    var body: some View {
        ZStack {
            Button(action: {}) {
                Text(title)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 10.0)
            .background(CardsGradientStyle())
            
//            if value == "" {
//
//            }
//
//
//            Text("Concluir")
                //.font(.footnote)
            
            //                }.onTapGesture {
            //                    self.completeStep(stepTitle,byStep,activityTime,frequency)
            //                    novaEtapa = false
            //
            
        }
        .frame(width: 130, height: 48, alignment: .center)
    }
}

struct BlueButton_Previews: PreviewProvider {
    static var previews: some View {
        BlueButton(title: "Conlcuir")
    }
}
