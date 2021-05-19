//
//  TreatmentsProView.swift
//
//  View dos Tratamentos, usada como aba de tratamentos na TabView do Profissional
//
//  AiNi
//
//  Created by Anderson Sprenger on 07/05/21.
//

import SwiftUI

struct TreatmentsProView: View {
    var body: some View {
        
        NavigationView {
            
//            NavigationLink(
//                destination: CreateNewTreatment(),
//                label: {
//                    Text("Novo Tratamento")
//                }).navigationBarTitle( Text("Novo Tratamento"))
            
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer() // descola o primeiro card da navigationbar
                    ForEach (0..<10) {_ in
                        NavigationLink(destination: TreatmentProStages()) {
                            TreatmentProCard()
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Tratamentos")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            .navigationBarItems(leading: EmptyView(), trailing: AddTreatment())
        }
    }
}

struct AddTreatment : View {
    var body: some View {
            NavigationLink(destination: CreateNewTreatment()) {
                Image(systemName: "plus")
            }
        }
    }

struct Treatments_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentsProView()
    }
}
