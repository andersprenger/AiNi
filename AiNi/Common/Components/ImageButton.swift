//
//  ImageButton.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 19/05/21.
//

import SwiftUI

struct ImageButton: View {
    var body: some View {
        HStack {
            Button("", action: {
//                isActive = false
//                timeRemaining = defaultTImeRemaining
                
            }).background(Image(systemName:"goforward"))
            .font(.subheadline)
            .padding(6)
            
            Text("Repetir")
                .font(.subheadline)
                .fontWeight(.light)
                .background(Color("AccentColor"))
            
        }.padding(.top)
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton()
    }
}
