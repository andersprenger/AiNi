//
//  StageViewPatient.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 14/05/21.
//

import SwiftUI

struct PatientStageView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 17) {
                Spacer()
                ForEach (0..<4) {_ in
                    NavigationLink(destination: PatientDoingStep()) {
                        StageCard(StageTitle: "Etapa do tratamento")
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle("Tratamento 1")
        .navigationBarTitleDisplayMode(.inline)
        // MARK: --TODO: adicionar botoes de add e editar quando prontos
        //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
    }
}

struct PatientStageView_Previews: PreviewProvider {
    static var previews: some View {
        PatientStageView()
    }
}
