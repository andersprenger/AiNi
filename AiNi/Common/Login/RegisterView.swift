//
//  RegisterView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI
import Foundation

struct RegisterView: View {
    @State private var showingFullScreen = false
    @State private var currentSegment = 0
    @State var name = ""
    @State var profissao = ""
    @State var especializacao = ""
    @State var data_nascimento = ""
    @State var celular = ""
    @State var email = ""
    @State var password = ""
    
    init() {
        // TODO Inserir CornerRadius
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.systemBlue], for: .normal)
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.systemBlue
        UISegmentedControl.appearance().backgroundColor = UIColor.systemBlue.withAlphaComponent(0.1)
    }
    
    @Environment(\.presentationMode) var presentationMode
    
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
                    Picker(selection: $currentSegment, label: Text("")) {
                        Text("Profissional").tag(0)
                        Text("Paciente").tag(1)
                    }
                    //.cornerRadius(18)
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical, 20)
                    .padding(.horizontal, 70)
                    GeometryReader { geo in
                        ZStack {
                            VStack() {
                                ScrollView(.vertical, showsIndicators: false) {
                                    CustomTextField(title: "Nome Completo", value: $name)
                                    CustomTextField(title: "", value: $data_nascimento)
                                    CustomTextField(title: "Celular", value: $celular)
                                        .padding(.bottom, 15)
                                    CustomTextField(title: "E-mail", value: $email)
                                    CustomTextField(title: "Senha", value: $password)
                                    HStack {
                                        Spacer()
                                            .frame(width: 40, alignment: .center)
                                        Button("     Cadastrar     ") {
                                            patient = User(name: name, profissao: nil, especializacao: nil, data_nascimento: data_nascimento, celular: celular, email: email, password: password, type: UserType.patient.rawValue)
                                            print(patient)
                                            let isSavedUser = true
                                            let encoder = JSONEncoder()
                                            do {
                                                let encoded = try encoder.encode(patient)
                                                let defaults = UserDefaults.standard
                                                defaults.set(encoded, forKey: "SavedUser")
                                                defaults.set(isSavedUser, forKey: "isSavedUser")
                                            } catch {
                                                print(error)
                                            }
                                            showingFullScreen.toggle()
                                        }
                                        .buttonStyle(BlueButton())
                                        .fullScreenCover(isPresented: $showingFullScreen) {
                                            ProfessionalTabView()
                                        }
                                        Spacer()
                                            .frame(width: 40, alignment: .center)
                                    }
                                }
                            }.offset(x: self.currentSegment == 1 ? 0 : -geo.size.width-300, y: 0)
                            .animation(.default)
                            
                            VStack() {
                                ScrollView(.vertical, showsIndicators: false) {
                                    CustomTextField(title: "Nome Completo", value: $name)
                                    CustomTextField(title: "Profissão", value: $profissao)
                                    CustomTextField(title: "Especialização", value: $especializacao)
                                    CustomTextField(title: "Celular", value: $celular)
                                        .padding(.bottom, 15)
                                    CustomTextField(title: "E-mail", value: $email)
                                    CustomTextField(title: "Senha", value: $password)
                                    HStack {
                                        Spacer()
                                            .frame(width: 40, alignment: .center)
                                        Button("     Cadastrar     ") {
                                            professional = User(name: name, profissao: profissao, especializacao: especializacao, data_nascimento: nil, celular: celular, email: email, password: password, type: UserType.professional.rawValue)
                                            print(professional)
                                            let isSavedUser = true
                                            let encoder = JSONEncoder()
                                            do {
                                                let encoded = try encoder.encode(professional)
                                                let defaults = UserDefaults.standard
                                                defaults.set(encoded, forKey: "SavedUser")
                                                defaults.set(isSavedUser, forKey: "isSavedUser")
                                            } catch {
                                                print(error)
                                            }
                                            showingFullScreen.toggle()
                                            
                                        }
                                        .buttonStyle(BlueButton())
                                        .fullScreenCover(isPresented: $showingFullScreen) {
                                            PatientTabView()
                                        }
                                        Spacer()
                                            .frame(width: 40, alignment: .center)
                                    }
                                }
                            }.offset(x: self.currentSegment == 0 ? 0 : -geo.size.width+900, y: 0)
                            .animation(.default)
                        }
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
