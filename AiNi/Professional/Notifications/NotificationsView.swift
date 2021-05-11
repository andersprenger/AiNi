//
//  Notifications.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 17) {
                    Spacer() // descola o primeiro card da navigationbar
                    ForEach (0..<10) {_ in
                        RoundedRectangle(cornerRadius: 28)
                            .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1))) // FIXME: alterar cor para funcionar dark mode.
                            .frame(height: 133, alignment: .center)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Notificações")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: --TODO: adicionar botoes de add e editar quando prontos
            //.navigationBarItems(leading: <#T##View#>, trailing: <#T##View#>)
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
