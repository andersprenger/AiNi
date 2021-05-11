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
                    Image(systemName: "person.2.square.stack.fill")
                    // Image(systemName: "rectangle.stack.person.crop.fill")
                    Text("Pacientes")
                }
            
            Notifications()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Notificações")
                }
            
            Profile()
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
