//
//  AuthView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

struct AuthView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showingFullScreen = false
    
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.4)
            VStack {
                HStack(alignment:.top) {
                    HStack {
                        Spacer()
                        Text("Login")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Button("X") {
                            presentationMode.wrappedValue.dismiss()
                        }.font(.title3)
                    }
                }
                .padding()
                Spacer()
                VStack(alignment: .center) {
                    Text("E-mail")
                        .font(.title2)
                    Text("Senha")
                        .font(.title2)
                    
                    Button("Login") {
                        showingFullScreen.toggle()
                    }
                    .font(.title2)
                    .fullScreenCover(isPresented: $showingFullScreen) {
                        PatientTabView()
                    }
                    
                    
                }
                Spacer()
            }
        }
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
