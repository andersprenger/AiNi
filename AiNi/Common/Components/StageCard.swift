//
//  PatientStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct StageCard: View {
    var stageTitle: String
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(stageTitle)
                .font(.footnote)
                .foregroundColor(.white)
        }
    }
}

struct StageCard_Previews: PreviewProvider {
    static var previews: some View {
        StageCard(stageTitle: "Etapa 1 - Iniciando Tratamento")
            .previewLayout(.fixed(width: 347, height: 66))
    }
}
