//
//  PatientProgressView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 17/05/21.
//

import SwiftUI

struct PatientProgressView: View {
    
    @State var selectedStage: Int = 0
    var Stages = ["Etapa 1", "Etapa 2", "Etapa 3", "Etapa 4", "Etapa 5"]
    
    var body: some View {
        ZStack{
            VStack {
                Picker(selection: $selectedStage, label: Text("")) {
                    Text("Etapa 1").tag(0)
                    Text("Etapa 2").tag(1)
                    Text("Etapa 3").tag(2)
                    Text("Etapa 4").tag(3)
                    Text("Etapa 5").tag(4)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(LightGradientStyle())
            .padding()
            
        }
    }
}


struct PatientProgressView_Previews: PreviewProvider {
    static var previews: some View {
        PatientProgressView(selectedStage: 4)
    }
}
