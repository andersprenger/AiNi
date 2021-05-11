//
//  TreatmentStages.swift
//  AiNi
//
//  Etapas de um tratamento, a view chamada ao editar um tratamento.
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct TreatmentStages: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 15) {
                Text("Crie o seu tratamento do jeito que quiser, adicione etapas, tarefas, frequência e tempo.")
                    .font(.footnote)
                    .frame(width: 339, alignment: .center)
                    .padding(.top, 15)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(height: 46, alignment: .center)
                        .foregroundColor(Color("card-color"))
                    
                    Text("\(Image(systemName: "plus")) Nova Etapa")
                        .font(.footnote)
                }
                ForEach(0..<2) { _ in
                    TreatmentStage(text:"ETAPA 1 - INICIANDO TRATAMENTO")
                }
            }
            .padding(.horizontal)
        }
    }
}

struct TreatmentDetail_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentStages()
    }
}
