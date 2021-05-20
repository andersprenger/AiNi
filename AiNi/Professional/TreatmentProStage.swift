//
//  TreatmentProStage.swift
//  AiNi
//
//  Etapa de Tratamento, usada em TreatmentStages
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct TreatmentProStage: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 46, alignment: .center)
                .foregroundColor(Color("card-color"))
            
            
            
            Text(text)
                .font(.footnote).foregroundColor(.white)
        }
    }
}

struct TreatmentStage_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentProStage(text: "ETAPA 1 - INCIANDO TRATAMENTO")
            .previewLayout(.fixed(width: 347, height: 66))
    }
}
