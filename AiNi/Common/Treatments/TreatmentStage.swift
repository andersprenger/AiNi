//
//  TreatmentStage.swift
//  AiNi
//
//  Etapa de Tratamento, usada em TreatmentStages
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct TreatmentStage: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .frame(height: 46, alignment: .center)
                .foregroundColor(Color("card-color"))
            
            Text(text)
                .font(.footnote)
        }
    }
}

struct TreatmentStage_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentStage(text: "ETAPA 1 - INCIANDO TRATAMENTO")
            .previewLayout(.fixed(width: 347, height: 66))
    }
}
