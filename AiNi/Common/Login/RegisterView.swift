//
//  RegisterView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

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
                                        showingFullScreen.toggle()
                                    }
                                    .buttonStyle(BlueButton())
                                    .fullScreenCover(isPresented: $showingFullScreen) {
                                        PatientTabView()
                                    }
                                    Spacer()
                                        .frame(width: 40, alignment: .center)
                                }
                            }.offset(x: self.currentSegment == 1 ? 0 : -geo.size.width-300, y: 0)
                            .animation(.default)
                            
                            VStack() {
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
                                        showingFullScreen.toggle()
                                    }
                                    .buttonStyle(BlueButton())
                                    .fullScreenCover(isPresented: $showingFullScreen) {
                                        PatientTabView()
                                    }
                                    Spacer()
                                        .frame(width: 40, alignment: .center)
                                }
                            }.offset(x: self.currentSegment == 0 ? 0 : -geo.size.width-300, y: 0)
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
