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
    
    var treatment: TreatmentDetailsModel
    
    var body: some View {
        ZStack {
            CardsGradientStyle()
            
            VStack (alignment: .leading) {
                Text(treatment.treatmentName)
                    .font(.title)
                    .foregroundColor(Color(.white))
                
                Text(treatment.description)
                    .font(.subheadline)
                    .foregroundColor(Color(.white))
                
                HStack (spacing: 2) {
                    HStack (alignment: .center, spacing: -5) {
                        //                        ForEach(0..<3){ index in
                        ////                            Circle()
                        ////                                .strokeBorder(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)), lineWidth: 2)
                        ////                                .background(Circle().fill(Color(#colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.2352941176, alpha: 1))))
                        ////                                .frame(width: 20, height: 20)
                        ////                                .zIndex(2 - Double(index))
                        //                            CircleImage(imageName: treatment.thisTreatmentPacients[index].name, size: 20)
                        //                        }
                        ForEach(treatment.thisTreatmentPacients) { pacient in
                            HStack{
                                CircleImage(imageName: pacient.name, size: 20)
                            }
                        }
                    }
                    Text("+5")
                        .font(.subheadline)
                        .foregroundColor(Color("card-color"))
                    
                    Spacer()
                    // esse spacer garante que o conteudo do card se espalhe horizontalmente
                    // por todo o card, respeitando o alinhamento do vstack e o padding.
                }
                
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
        .cornerRadius(22)
    }
}

struct TreatmentProCard_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentProCard(treatment: .init())
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 349, height: 153))
        
    }
}
