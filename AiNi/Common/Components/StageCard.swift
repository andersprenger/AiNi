//
//  PatientStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct StageCard: View {
    
    var StageTitle: String
    
    var body: some View {
        
        ZStack {
            CardsGradientStyle()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(StageTitle)
                .font(.footnote)
                .foregroundColor(.white)
        }
    }
}

struct StageCard_Previews: PreviewProvider {
    static var previews: some View {
        StageCard(StageTitle: "Etapa 1 - Iniciando Tratamento")
            .previewLayout(.fixed(width: 347, height: 66))
    }
}
