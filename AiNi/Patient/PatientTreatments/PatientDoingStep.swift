//
//  PatientsTreatmentModel.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//

import SwiftUI

struct PatientDoingStep: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 17) {
                Spacer()
                
                PatientProgressView()
                
                Image("step1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Text("Com os dedos apoiados no nariz, vibrar a boca e o nariz. Emita um som como se fosse de abelha (hummmmmm) por 1 minuto.")
                    .multilineTextAlignment(.center)
                    .frame(width: 339, alignment: .center)
                    .padding(.top, 10)
                
                BlueButton()
            }
        }
    }
}

struct PatientsTreatmentModel_Previews: PreviewProvider {
    static var previews: some View {
        PatientDoingStep()
    }
}
