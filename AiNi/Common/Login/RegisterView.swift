//
//  RegisterView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

struct RegisterView: View {
    @State private var typeUser = "Profissional"
    var users = ["Profissional", "Paciente"]
    @State var name = ""
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
                VStack(alignment: .center) {
                    Picker(selection: $typeUser, label: Text("")) {
                        ForEach(users, id: \.self) {
                            Text($0)
                        }
                    }
                    //.cornerRadius(18)
                    .pickerStyle(SegmentedPickerStyle())
                    //.background(CardsGradientStyle())
                    .padding(.vertical, 20)
                    .padding(.horizontal, 70)
                    
                    
                    CustomTextField(title: "Nome Completo", value: $name)
                    CustomTextField(title: "", value: $data_nascimento)
                    CustomTextField(title: "Celular", value: $celular)
                        .padding(.bottom, 15)
                    CustomTextField(title: "E-mail", value: $email)
                    CustomTextField(title: "Senha", value: $password)
                }
                .padding(.horizontal)
                .padding(.vertical, 20)
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
