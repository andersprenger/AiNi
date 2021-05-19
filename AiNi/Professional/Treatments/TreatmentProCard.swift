//
//  TreatmentProCard.swift
//  AiNi
//
//  Card de tratamento, usado na Lista de Tratamento presente na tab tratamentos do profissional.
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct TreatmentProCard: View {
    var body: some View {
        ZStack {
            CardsGradientStyle()
            
            VStack (alignment: .leading) {
                Text("Nome do Tratamento")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Descrição do Tramento, detalhes dos passos, etc e tal.")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                HStack (spacing: 2) {
                    HStack (alignment: .center, spacing: -5) {
                        ForEach(0..<3){ index in
                            Circle()
                                .strokeBorder(Color.white, lineWidth: 2)
                                .background(Circle().fill(Color(#colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.2352941176, alpha: 1))))
                                .frame(width: 20, height: 20)
                                .zIndex(2 - Double(index))

                        }
                    }
                    Text("+5")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Spacer()
                    // esse spacer garante que o conteudo do card se espalhe horizontalmente
                    // por todo o card, respeitando o alinhamento do vstack e o padding.
                }
                
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
    }
}

struct TreatmentProCard_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentProCard()
            .previewLayout(.fixed(width: 349, height: 153))
        
    }
}
