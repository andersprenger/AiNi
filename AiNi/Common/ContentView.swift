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
    
        var isSavedUser: Bool {
            let isSavedUser = defaults.bool(forKey: "isSavedUser")
//            let isSavedUser = false
            return isSavedUser
        }
    
        var loadedUser: User {
            if let savedUser = defaults.object(forKey: "SavedUser") as? Data {
                let decoder = JSONDecoder()
                do {
                    let loadedUser = try decoder.decode(User.self, from: savedUser)
                    print(loadedUser)
                    return loadedUser
    
                } catch {
                    print(error)
                }
    
            }
            fatalError("Should have saved user in ContentView")
        }
    
    
    var body: some View {
        if isSavedUser == true {
            if loadedUser.type == UserType.professional.rawValue {
                ProfessionalTabView()
            } else {
                PatientTabView()
            }
        } else {
            VStack {
                ZStack{
                    TabView {
                        VStack {
                            Text("Acompanhamento")
                                .bold()
                                .font(.title2)
                            Text("Crie tratamentos e acompanhe o progresso")
                            Text("dos seus pacientes")
                            Image("Onboarding2")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                        
                        VStack {
                            Text("Gerenciamento")
                                .bold()
                                .font(.title2)
                            Text("Cadastre seus pacientes no App e faça o")
                            Text("acompanhamento remoto do progresso")
                            Text("de seus pacientes")
                            Image("Onboarding1")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                        VStack {
                            Text("Notificações")
                                .bold()
                                .font(.title2)
                            Text("Seja notificado quando seus pacientes")
                            Text("realizarem os tratamentos")
                            Image("Onboarding3")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                    }
                }
//                .onAppear{
//                    if let bundleID = Bundle.main.bundleIdentifier {
//                        UserDefaults.standard.removePersistentDomain(forName: bundleID)
//                    }
//                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .ignoresSafeArea()
                
                VStack(spacing:20) {
                    Button("Login") {
                        showingSheetAuth.toggle()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(CardsGradientStyle())
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .frame(width: 370, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .sheet(isPresented: $showingSheetAuth) {
                        AuthView()
                    }
                    Button("Abra sua Conta") {
                        showingSheetRegister.toggle()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LightGradientStyle())
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .frame(width: 370, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .sheet(isPresented: $showingSheetRegister) {
                        RegisterView()
                    }
                    
                }.padding(.vertical, 40)
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
