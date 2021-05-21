//
//  PatientsView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct PatientsView: View {
    @State private var showSheet = false
    
    @ObservedObject var todosPacientes : AllPacientsModel = AllPacientsModel.mockDosPacientes
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer() // descola o primeiro card da navigationbar
//                    ForEach (0..<10) { _ in
//                        PatientCard()
//                    }
                    ForEach(todosPacientes.pacients, id: \.self) {pacient in
                        PatientCard(nome: pacient.name, image: pacient.name)
                    }
                    .padding(.horizontal)
                }
            }
//            ScrollView{
//                ForEach(todosPacientes.pacients, id: \.self) {pacient in
//                    HStack{
//                        ListedPacientView(nome: pacient.name, image: pacient.name)
//                        Spacer()
//                        Image(systemName: "minus.circle")
//                    }
//                }
//            }
            .navigationTitle("Pacientes")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            .navigationBarItems(leading: EmptyView(), trailing: patientButton)
        }
    }
    
    var patientButton: some View {
        Image(systemName: "plus")
            .sheet(isPresented: $showSheet) {
                RegisterPatient()
            }
            .onTapGesture {
                showSheet.toggle()
            }
    }
}

struct Patients_Previews: PreviewProvider {
    static var previews: some View {
        PatientsView()
    }
}
