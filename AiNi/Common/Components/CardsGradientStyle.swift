//
//  CardsGradientStyle.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 14/05/21.
//

import SwiftUI

struct CardsGradientStyle: View {
    var body: some View {
        ZStack {
        LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)
        }
    }
}

struct CardsGradientStyle_Previews: PreviewProvider {
    static var previews: some View {
        CardsGradientStyle()
    }
}
