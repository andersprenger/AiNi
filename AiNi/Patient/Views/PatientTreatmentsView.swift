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
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 17) {
                    Spacer()
                    ForEach (0..<4) {_ in
                        NavigationLink(destination: PatientStageView()) {
                            PatientTreatmentCard(Treatment: "", StageofTreatment: "")
                        }
                    }
                }
                .padding(.horizontal)
                
            }.navigationTitle("Tratamentos").frame(alignment: .center)
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct PatientTreatmentsView_Previews: PreviewProvider {
    static var previews: some View {
        PatientTreatmentsView()
    }
}
