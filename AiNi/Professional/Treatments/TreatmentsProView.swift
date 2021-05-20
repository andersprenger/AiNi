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
    
    @ObservedObject var todosTratamentos : ProCurrentTreatments = .init()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer() // descola o primeiro card da navigationbar
                    ForEach (todosTratamentos.treatments, id:\.id) {treatment in
                        NavigationLink(destination: TreatmentProStages(viewModel: treatment)) {
                            TreatmentProCard(treatment: treatment)
                        }
                        
                    }
//                    ForEach (ProCurrentTreatments.mockDosTratamentos, id:\.id ) {treatment in
//                        NavigationLink(destination: TreatmentProStages(viewModel: treatment)) {
//                            TreatmentProCard(treatment: treatment)
//                        }
//
//                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Tratamentos")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            .navigationBarItems(leading: EmptyView(), trailing: mais(tratamentos: todosTratamentos))
        }
    }
    
    struct mais : View {
        
        var tratamentos : ProCurrentTreatments
        
        var body: some View {
            
            
            NavigationLink(destination: CreateNewTreatment(todosTratamentos: tratamentos)) {
                Image(systemName: "plus")
            }
            
        }
        
        
        
        
    }
    
    
    
    struct Treatments_Previews: PreviewProvider {
        static var previews: some View {
            TreatmentsProView()
        }
    }
}
