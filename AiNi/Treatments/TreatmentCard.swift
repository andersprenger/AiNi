//
//  TreatmentCard.swift
//  AiNi
//
//  Card de tratamento, usado na Lista de Tratamento presente na tab tratamentos do profissional.
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct TreatmentCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)))
            
            VStack (alignment: .leading) {
                Text("Nome do Tratamento")
                    .font(.title)
                    .foregroundColor(.black)
                
                Text("Descrição do Tramento, detalhes dos passos, etc e tal.")
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                HStack (alignment: .center) {
                    ForEach(0..<3){_ in
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))
                            // preciso de ajuda para fazer a sobreposição conforme o wireframe
                    }
                    Spacer()
                    // esse spacer garante que o conteudo do card se espalhe horizontalmente
                    // por todo o card, respeitando o alinhamento do vstack e o padding.
                }
                
            }
            .padding()
            
        }
        .frame(width: 329, height: 133, alignment: .center)
    }
}

struct TreatmentCard_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentCard()
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
