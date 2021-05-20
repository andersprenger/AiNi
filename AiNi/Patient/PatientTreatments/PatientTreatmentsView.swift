//
//  PatientTreatmentsView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 12/05/21.
//

import SwiftUI

struct PatientTreatmentsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer()
                    ForEach (0..<4) {_ in
                        NavigationLink(destination: PatientStageView()) {
                            PatientTreatmentCard()
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Tratamentos")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
        }
    }
}

struct PatientTreatmentsView_Previews: PreviewProvider {
    static var previews: some View {
        PatientTreatmentsView()
    }
}
