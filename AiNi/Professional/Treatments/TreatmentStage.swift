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
                .frame(width: 327, height: 46, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1))) // FIXME: alterar cor para funcionar dark mode.
            
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
