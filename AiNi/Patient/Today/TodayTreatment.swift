//
//  Today.swift
//  AiNi
//
//  Placeholder for TK26, US15.
//
//  Created by Anderson Sprenger on 11/05/21.
//

import SwiftUI

struct TodayTreatment: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .foregroundColor(Color("card-color"))
            
            VStack (alignment: .leading) {
                Text("Nome do tratamento")
                    .font(.title)
                    .foregroundColor(Color("text-color"))
                
                Text("Etapa")
                    .foregroundColor(Color("text-color"))
                
                HStack (spacing: 2) {
                    HStack (alignment: .center, spacing: -5) {
                        
                    }
                    Text("+5")
                        .font(.subheadline)
                        .foregroundColor(Color("card-color"))
                    
                    Spacer()

                }
                
            }
            .padding()
            
        }
        .frame(height: 133, alignment: .center)
    }
}


struct Today_Previews: PreviewProvider {
    static var previews: some View {
        TodayTreatment()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 349, height: 153))
    }
}
