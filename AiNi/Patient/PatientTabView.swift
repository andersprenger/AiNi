//
//  PatientTabView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 11/05/21.
//

import SwiftUI

struct PatientTabView: View {
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Hoje")
                }
            
            PatientTreatmentsView()
                .tabItem {
                    Image(systemName: "bandage.fill")
                    // Image(systemName: "rectangle.stack.person.crop.fill")
                    Text("Tratamentos")
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

struct PatientView_Previews: PreviewProvider {
    static var previews: some View {
        PatientTabView()
    }
}
