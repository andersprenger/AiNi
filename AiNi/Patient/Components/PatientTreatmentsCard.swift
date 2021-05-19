//
//  PatientTreatmentStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct PatientTreatmentCard: View {
    
    @State var Treatment: String
    @State var StageofTreatment: String
    
    var body: some View {
        ZStack {
            CardsGradientStyle()
            
            VStack (alignment: .leading) {
                Text(Treatment)
                    .font(.title)
                    .foregroundColor(.white)
                
                Text(StageofTreatment)
                    .foregroundColor(.white)
                
                HStack (spacing: 2) {
                    HStack (alignment: .center, spacing: -5) {
                        
                    }
                    Spacer()
                }
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
        .clipShape(RoundedRectangle(cornerRadius: 22))
    }
}

struct PatientTreatmentCard_Previews: PreviewProvider {
    static var previews: some View {
        PatientTreatmentCard(Treatment: "", StageofTreatment: "")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
