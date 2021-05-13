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
            TreatmentsProView()
                .tabItem {
                    Image(systemName: "bandage.fill")
                    Text("Tratamentos")
                }
            
            PatientsView()
                .tabItem {
                    Image(systemName: "person.2.square.stack.fill")
                    // Image(systemName: "rectangle.stack.person.crop.fill")
                    Text("Pacientes")
                }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Notificações")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Perfil")
                }
        }
    }
}

struct ProfessionalTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalTabView()
    }
}
