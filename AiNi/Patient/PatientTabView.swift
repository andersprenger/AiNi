//
//  PatientMainView.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 11/05/21.
//

import SwiftUI

struct PatientMainView: View {
    var body: some View {
        TabView {
            Treatments()
                .tabItem {
                    Image(systemName: "bandage.fill")
                    Text("Tratamentos")
                }
            
            Patients()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Notifications()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Notificações")
                }
            
            Settings()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Perfil")
                }
        }
    }
}

struct PatientMainView_Previews: PreviewProvider {
    static var previews: some View {
        PatientMainView()
    }
}
