//
//  StageViewPatient.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 14/05/21.
//

import SwiftUI

struct PatientStageView: View {
    
    @State var StageTitle: String = ""
   
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 17) {
                ForEach (0..<4) {_ in
                    Button( "\(StageTitle)" , action: {
                        
                    }).buttonStyle(StageCard()).background(Color("card-color"))
                }
            }
            
        }.navigationTitle("Nome do Tratamento")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PatientStageView_Previews: PreviewProvider {
    static var previews: some View {
        PatientStageView()
    }
}
