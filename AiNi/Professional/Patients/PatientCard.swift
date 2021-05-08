//
//  TreatmentCard.swift
//  AiNi
//
//  Card de tratamento, usado na Lista de Tratamento presente na tab tratamentos do profissional.
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct PatientCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)))
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 21) {
                CircleImage(imageName: "patient-image", size: 86)
                
                VStack(alignment: .leading) {
                    Text("Flavio Fonseca")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Bancario, 50 anos.")
                        .font(.footnote)
                    Text("Procedimentos pós cirurgico.")
                        .font(.footnote)
                    Text("Tem alzheimer.")
                        .font(.footnote)
                }
            }
            .padding()
            
        }
        .frame(width: 329, height: 133, alignment: .center)
    }
}

struct PatientCard_Previews: PreviewProvider {
    static var previews: some View {
        PatientCard()
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
