//
//  PatientsTreatmentModel.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//

import SwiftUI

struct PatientDoingStep: View {
    
    @State private var showingFullScreen = false
    @State private var isActive = false
    @State private var timeRemaining: CGFloat = defaultTImeRemaining
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 17) {
                
                PatientProgressView()
                
                Image("step1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Com os dedos apoiados no nariz, vibrar a boca e o nariz. Emita um som como se fosse de abelha (hummmmmm) por 1 minuto.")
                    .multilineTextAlignment(.center)
                    .frame(width: 339, alignment: .center)
                
                TreatmentTimer()
                
                Spacer()
                
                
            }.navigationTitle("Tratamento 1")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct PatientsTreatmentModel_Previews: PreviewProvider {
    static var previews: some View {
        PatientDoingStep()
    }
}
