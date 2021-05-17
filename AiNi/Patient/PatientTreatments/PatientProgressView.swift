//
//  PatientProgressView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//

import SwiftUI

struct PatientProgressView: View {
    @State var favoriteColor = "Etapa 1"
    var colors = ["Etapa 1", "Etapa 2", "Etapa 3", "Etapa 4", "Etapa 5"]
    
    var body: some View {
        VStack {
            Picker(selection: $favoriteColor, label: Text("")) {
                ForEach(colors, id: \.self) {
                    Text($0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PatientProgressView_Previews: PreviewProvider {
    static var previews: some View {
        PatientProgressView()
    }
}
