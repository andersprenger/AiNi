//
//  BlueButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//
import SwiftUI

struct BlueButton: View {
    var body: some View {
        ZStack {
            CardsGradientStyle()
            
            Text("Concluir")
                .font(.footnote)
            
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
        BlueButton()
    }
}
