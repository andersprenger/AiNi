//
//  PatientCard.swift
//  AiNi
//
//  Card do paciente, usado na Lista de Tratamento presente na tab tratamentos do profissional.
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct PatientCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .foregroundColor(Color("card-color"))
            
            HStack(alignment: .center, spacing: 21) {
                CircleImage(imageName: "patient-image", size: 86)
                
                VStack(alignment: .leading) {
                    Text("Flavio Fonseca")
                        .font(.title)
                    
                    Text("Bancario, 50 anos.")
                        .font(.footnote)
                    Text("Procedimentos pós cirurgico.")
                        .font(.footnote)
                    Text("Tem alzheimer.")
                        .font(.footnote)
                }
                Spacer()
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
    }
}

struct PatientCard_Previews: PreviewProvider {
    static var previews: some View {
        PatientCard()
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
