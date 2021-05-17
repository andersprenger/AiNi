//
//  PatientStage.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 13/05/21.
//

import SwiftUI

struct StageCard: View {
    var StageTitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .frame(height: 46, alignment: .center)
                .foregroundColor(Color("card-color"))
            
            Text(StageTitle)
                .font(.footnote)
        }
    }
}

struct StageCard_Previews: PreviewProvider {
    static var previews: some View {
        StageCard(StageTitle: "")
            .previewLayout(.fixed(width: 347, height: 66))
    }
}
