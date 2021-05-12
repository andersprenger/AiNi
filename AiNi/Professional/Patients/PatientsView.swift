//
//  PatientsView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct PatientsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer() // descola o primeiro card da navigationbar
                    ForEach (0..<10) { _ in
                        PatientCard()
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Pacientes")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
        }
    }
}

struct Patients_Previews: PreviewProvider {
    static var previews: some View {
        PatientsView()
    }
}