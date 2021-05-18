//
//  AuthView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

struct AuthView: View {
    @State var email = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showingFullScreen = false
    
    
    var body: some View {
        
        ZStack {
            VStack {
                HStack(alignment:.top) {
                    HStack {
                        Button("X") {
                            presentationMode.wrappedValue.dismiss()
                        }.font(.title3)
                        Spacer()
                    }
                }
                .padding()
                Spacer()
                VStack(alignment: .center) {
                        
                    CustomTextField(title: "E-mail", value: $email)
                    CustomTextField(title: "Senha", value: $password)
                    Button("     Login     ") {
                        showingFullScreen.toggle()
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 25)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(CardsGradientStyle())
                    .foregroundColor(.white)
                    .fullScreenCover(isPresented: $showingFullScreen) {
                        PatientTabView()
                    }
                    .cornerRadius(20)
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 20)
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
