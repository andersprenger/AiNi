//
//  RegisterPatient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 18/05/21.
//

import SwiftUI

struct RegisterPatient: View {
    @State var nome: String = "Nome completo do Paciente"
    @State var email: String = "E-mail do Paciente"
    @State var message: String = "Mensagem"
    @State var addingTreatment: Bool = false
    @State private var search: String = "Pesquisar Tratamento"
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 19) {
                ZStack {
                    HStack {
                        Text("Cancelar")
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Cadastrar Novo Paciente")
                            .font(.headline)
                    }
                }
                .padding()
                
                ZStack {
                    LightGradientBox()
                    
                    TextField("Nome Completo", text: $nome)
                        .textContentType(.name)
                        .foregroundColor(Color(.systemBlue))
                        .opacity(0.5)
                        .padding()
                }
                .frame(height: 45, alignment: .center)
                .padding(.horizontal)
                
                ZStack {
                    LightGradientBox()
                    
                    TextField("Email", text: $email)
                        .textContentType(.emailAddress)
                        .textCase(.lowercase)
                        .foregroundColor(Color(.systemBlue))
                        .opacity(0.5)
                        .padding()
                }
                .frame(height: 45, alignment: .center)
                .padding(.horizontal)
                
                ZStack {
                    LightGradientBox()
                    
                    VStack {
                        TextField("Mensagem", text: $message)
                            .foregroundColor(Color(.systemBlue))
                            .opacity(0.5)
                            .padding()
                        
                        Spacer()
                    }
                }
                .frame(height: 156, alignment: .center)
                .padding(.horizontal)
                
                ZStack {
                    LightGradientBox()
                    
                    VStack {
                        HStack {
                            Button("\(Image(systemName: "plus")) Adicionar a tratamento", action: {
                                withAnimation {
                                    addingTreatment.toggle()
                                }
                            })
                            Spacer()
                        }
                        .padding()
                        
                        if (addingTreatment) {
                            VStack (alignment: .center, spacing: 23) {
                                
                                HStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                        
                                        TextField("Pesquisar Tratamento", text: $search)
                                            .padding()
                                    }
                                    .padding()
                                    
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                        
                                        Button("Adicionar") {
                                            //inserir action
                                        }
                                        .padding(.vertical)
                                    }
                                    .frame(width: 73, height: 33)
                                }
                                
                                ForEach(0..<3) {_ in
                                    TreatmentItemNewPatient()
                                        .padding(.horizontal)
                                }
                                Spacer()
                            }
                        }
                        
                    }
                }
                .frame(height: CGFloat(addingTreatment ? 278 : 46), alignment: .center)
                .padding(.horizontal)
                
                Spacer()
                
                BlueButton()
            }
        }
    }
}

struct RegisterPatient_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPatient()
    }
}
