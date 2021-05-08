//
//  Treatments.swift
//
//  View dos Tratamentos, usada como aba de tratamentos na TabView do Profissional
//
//  AiNi
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct Treatments: View {
    var body: some View {
        NavigationView {
            
            List {
                // substituir o foreach pela parametrização da
                // list quando definido o modelo de dados
                ForEach (0..<10) {_ in
                    TreatmentCard()
                }
            }
            .navigationTitle("Tratamentos")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
        }
        
    }
}

struct Treatments_Previews: PreviewProvider {
    static var previews: some View {
        Treatments()
    }
}
