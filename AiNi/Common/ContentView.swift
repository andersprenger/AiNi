//
//  ContentView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 05/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheetRegister = false
    @State private var showingSheetAuth = false
    
    var body: some View {
        //PatientTabView()
        //TODO Imagens de Onboarding
        VStack {
            ZStack{
                Color.blue
                TabView {
                    Text("First")
                    Text("Second")
                    Text("Third")
                }
            }
            .tabViewStyle(PageTabViewStyle())
            VStack(spacing:20) {
                Button("Abra sua Conta") {
                    showingSheetRegister.toggle()
                }
                .buttonStyle(BlueButton())
                .sheet(isPresented: $showingSheetRegister) {
                    RegisterView()
                }
                Button("Login") {
                    showingSheetAuth.toggle()
                }
                .buttonStyle(BlueButton())
                .sheet(isPresented: $showingSheetAuth) {
                    AuthView()
                }
            }.padding(40)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
