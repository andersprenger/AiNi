//
//  PatientProgressView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//

import SwiftUI

struct PatientProgressView: View {
    
    @State var SelectedStage = ""
    
    var Stages = ["Etapa 1", "Etapa 2", "Etapa 3", "Etapa 4", "Etapa 5"]
    
    var body: some View {
        VStack {
            Picker(selection: $SelectedStage, label: Text("")) {
                ForEach(Stages, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(LightGradientStyle())
            
        }
        .padding(4)

    }
}

struct PatientProgressView_Previews: PreviewProvider {
    static var previews: some View {
        PatientProgressView()
    }
}
