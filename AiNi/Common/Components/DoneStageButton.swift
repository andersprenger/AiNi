//
//  DoneStageButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 20/05/21.
//

import SwiftUI

struct DoneStageButton: View {
    
    @State private var isActive = false
    @State private var isDone = false
    @State private var timeRemaining: CGFloat = defaultTImeRemaining
    
    var body: some View {
        
        HStack {
            Button("\(isActive ? "Concluir" : !isActive && timeRemaining == defaultTImeRemaining ? "Concluir" : "Concluir")", action: {
                isDone = true
                timeRemaining = defaultTImeRemaining
                
            })
            .padding()
            .background(LightGradientStyle())
            .foregroundColor(Color.black)
            .font(.subheadline)
            .frame(width: 100, height: 50, alignment: .center)
            
        }.cornerRadius(20)
        
//        NavigationLink(destination: StepTwoView()) {
//            StepTwoView()
//        }
    }
}

struct DoneStageButton_Previews: PreviewProvider {
    static var previews: some View {
        DoneStageButton()
    }
}
