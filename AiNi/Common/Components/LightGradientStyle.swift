//
//  LightGradient.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 18/05/21.
//

import SwiftUI

struct LightGradientStyle: View {
    var body: some View {
        ZStack {
        LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)
            .opacity(0.10)
        }
    }
}

struct LightGradient_Previews: PreviewProvider {
    static var previews: some View {
        LightGradientStyle()
    }
}
