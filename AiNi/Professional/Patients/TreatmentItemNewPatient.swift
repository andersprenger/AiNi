//
//  TreatmentItemNewPatient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 18/05/21.
//

import SwiftUI

struct TreatmentItemNewPatient: View {
    var body: some View {
        HStack {
            Text("Articulação")
            
            Spacer()
            
            Image(systemName: "minus.circle")
        }
    }
}

struct TreatmentItemNewPatient_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentItemNewPatient()
            .previewLayout(.fixed(width: 347, height: 30))
    }
}
