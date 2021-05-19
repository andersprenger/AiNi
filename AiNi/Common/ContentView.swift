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
                TabView {
                    Text("First")
                    Text("Second")
                    Text("Third")
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            VStack(spacing:10) {
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
            }.padding(.vertical,30)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
