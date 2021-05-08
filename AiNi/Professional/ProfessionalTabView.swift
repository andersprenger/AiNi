//
//  ProfessionalTabView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct ProfessionalTabView: View {
    var body: some View {
        TabView {
            Treatments()
                .tabItem {
                    Image(systemName: "bandage.fill")
                    Text("Tratamentos")
                }
            
            Patients()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Pacientes")
                }
            
            Notifications()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Notificações")
                }
            
            Settings()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Configurações")
                }
        }
    }
}

struct ProfessionalTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalTabView()
    }
}
