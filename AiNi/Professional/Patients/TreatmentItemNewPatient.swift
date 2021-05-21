//
//  TreatmentItemNewPatient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 18/05/21.
//

import SwiftUI

struct TreatmentItemNewPatient: View {
    var description: String
    
    var body: some View {
        HStack {
            Text(description)
            
            Spacer()
            
            Image(systemName: "minus.circle")
        }
    }
}

struct TreatmentItemNewPatient_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentItemNewPatient(description: "articulação")
            .previewLayout(.fixed(width: 347, height: 30))
    }
}
