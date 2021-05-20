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
    
    let defaults = UserDefaults.standard
    let userType = UserType.professional
    
    var isSavedUser: Bool {
        do {
            let isSavedUser = defaults.bool(forKey: "isSavedUser")
            return isSavedUser
        } catch {
            print(error)
        }
    }
    
    var loadedPerson: User {
        if let savedUser = defaults.object(forKey: "SavedUser") as? Data {
            let decoder = JSONDecoder()
            do {
                let loadedPerson = try decoder.decode(User.self, from: savedUser)
                print(loadedPerson)
                return loadedPerson
                
            } catch {
                print(error)
            }
            
        }
        fatalError("Should have saved user in ContentView")
    }
    
    
    var body: some View {
        
        if isSavedUser == true {
            if loadedPerson.type == UserType.patient.rawValue {
                PatientTabView()
            } else {
                ProfessionalTabView()
            }
        } else {
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
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
