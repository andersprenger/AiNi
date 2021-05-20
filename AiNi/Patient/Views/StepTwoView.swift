//
//  StepTwoView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 20/05/21.
//

import SwiftUI

struct StepTwoView: View {
    @State private var nextStep = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 17) {
                                
                Image("step2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack{
                    Text("Pegue um lápis, coloque entre os dentes e leia diversas frases, rimas e travas-línguas.")
                        .padding(2)
                    
                    Text("Leia cada frase primeiro em um ritmo normal, depois em ritmo lento e por último, em ritmo rápido.")
                        .padding(2)
                    
                }
                .multilineTextAlignment(.center)
                .frame(width: 340, alignment: .center)
                
                Spacer()
                
            }.navigationTitle("Tratamento 1")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct StepTwoView_Previews: PreviewProvider {
    static var previews: some View {
        StepTwoView()
    }
}
