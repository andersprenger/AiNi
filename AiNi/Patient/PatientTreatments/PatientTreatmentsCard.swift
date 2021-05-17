//
//  PatientTreatmentStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct PatientTreatmentCard: View {
    var body: some View {
        ZStack {
            CardsGradientStyle()
            
            VStack (alignment: .leading) {
                Text("Nome do tratamento")
                    .font(.title)
                    .foregroundColor(Color("text-color"))
                
                Text("Etapa atual")
                    .foregroundColor(Color("text-color"))
                
                HStack (spacing: 2) {
                    HStack (alignment: .center, spacing: -5) {
                        
                    }
                    Spacer()
                    
                }
                
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
    }
}

struct PatientTreatmentCard_Previews: PreviewProvider {
    static var previews: some View {
        PatientTreatmentCard()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
