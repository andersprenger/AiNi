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
    
    let defaults = UserDefaults.standard
    let userType = UserType.professional
    
    var isSavedUser: Bool {
        let isSavedUser = defaults.bool(forKey: "isSavedUser")
        return isSavedUser
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
        fatalError("Should have saved user in AuthView")
    }
    
    var body: some View {
        var patient = User(name: "Giovani", profissao: nil, especializacao: nil, data_nascimento: "05/11/1996", celular: "51 992116008", email: "bettoni.gn@gmail.com", password: "Teste123", type: UserType.patient.rawValue)
        var professional = User(name: "Julia", profissao: "Fono", especializacao: "", data_nascimento: nil, celular: "51 99456878", email: "admin@gmail.com", password: "Teste123", type: UserType.professional.rawValue)
        
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
                    .frame(height: 50)
                VStack(alignment: .center) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    CustomTextField(title: "E-mail", value: $email)
                    CustomTextField(title: "Senha", value: $password)
                    HStack {
                        Spacer()
                            .frame(width: 40, alignment: .center)
                        Button("     Login     ") {
                            if loadedPerson.email == email && loadedPerson.password == password {
                                print("E-mail: \(email) | Senha: \(password)")
                                print("sucess")
                            } else {
                                print("E-mail: \(email) | Senha: \(password)")
                                print("erro")
                            }
                            showingFullScreen.toggle()
                        }
                        .buttonStyle(BlueButton())
                        .fullScreenCover(isPresented: $showingFullScreen){
                            if loadedPerson.type == UserType.patient.rawValue {
                                PatientTabView()
                            } else {
                                ProfessionalTabView()
                            }
                        }
                        Spacer()
                            .frame(width: 40, alignment: .center)
                    }
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
