//
//  LightButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 19/05/21.
//

import SwiftUI

struct LightButton: View {
    
    @State var NextStep = false
    @State var ButtonTitle = ""
    
    var body: some View {
        ZStack {
            
            Button(action: {}) {
                Text(ButtonTitle)
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                    .padding()
                    .frame(width: 130, height: 48, alignment: .center)
                
            }.background(LightGradientStyle())
            
            .onTapGesture {
                NextStep = true
            }
            
        }.clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct LightButton_Previews: PreviewProvider {
    static var previews: some View {
        LightButton(ButtonTitle: "")
    }
}
