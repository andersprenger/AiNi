//
//  TodayView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 12/05/21.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer()
                    ForEach (0..<3) {_ in
                        NavigationLink(destination: PatientDoingStep()) {
                            PatientTreatmentCard(Treatment: "", StageofTreatment: "")                       }
                    }
                    
                }
                .padding(.horizontal)
            }
            .navigationTitle("Hoje")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
