//
//  StageViewPatient.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 14/05/21.
//

import SwiftUI

struct PatientStageView: View {
    
    @State var stageTitle = ""
    @ State var nextStep = false
    @ State var doStep = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 17) {
                
                Spacer()
                
                ForEach (0..<1) {_ in
                    Button(action: { doStep = true }, label: {
                        Text("\(stageTitle)")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                        
                    })
                    .background(CardsGradientStyle())
                    .buttonStyle(StageCard())
                    .cornerRadius(10)
                    
                }
                
                ForEach (0..<4) {_ in
                    Button(action: { nextStep = true }, label: {
                        Text("\(stageTitle)")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(Color("card-color"))
                        
                    })
                    .background(LightGradientStyle())
                    .buttonStyle(StageCard())
                    .cornerRadius(10)

                }
                
            }.navigationTitle("Nome do Tratamento")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct PatientStageView_Previews: PreviewProvider {
    static var previews: some View {
        PatientStageView()
    }
}

//func () {
//
//}
