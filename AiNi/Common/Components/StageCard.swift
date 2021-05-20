//
//  PatientStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct StageCard: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(Color.black)
            .frame(width: 350, height: 46, alignment: .center)
    }
}
