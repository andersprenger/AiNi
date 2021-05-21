//
//  RegisterPatient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 18/05/21.
//

import SwiftUI

struct RegisterPatient: View {
    @Environment (\.presentationMode) var presentationMode
    
    @State var nome: String = ""
    @State var email: String = ""
    @State var message: String = ""
    
    @State private var addingTreatment: Bool = false
    @State private var search: String = ""
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 19) {
                ZStack {
                    HStack {
                        Text("Cancelar")
                            //.font(.footnote)
                            .foregroundColor(.blue)
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                    }
                    
                    HStack {
                        Text("Cadastrar Novo Paciente")
                            .font(.headline)
                    }
                }
                .padding()
                
                ZStack {
                    LightGradientStyle()
                        .cornerRadius(10)
                    
                    TextField("Nome completo do Paciente", text: $nome)
                        .textContentType(.name)
                        .foregroundColor(Color(.systemBlue))
                        .opacity(0.5)
                        .padding()
                }
                .frame(height: 45, alignment: .center)
                .padding(.horizontal)
                
                ZStack {
                    LightGradientStyle()
                        .cornerRadius(10)

                    TextField("E-mail do Paciente", text: $email)
                        .textContentType(.emailAddress)
                        .textCase(.lowercase)
                        .foregroundColor(Color(.systemBlue))
                        .opacity(0.5)
                        .padding()
                }
                .frame(height: 45, alignment: .center)
                .padding(.horizontal)
                
                ZStack {
                    LightGradientStyle()
                        .cornerRadius(10)

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
                    LightGradientStyle()
                        .cornerRadius(10)

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
                            VStack (alignment: .center) {
                                HStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                        
                                        TextField("Pesquisar Tratamento", text: $search)
                                            .font(.footnote)
                                            .padding()
                                    }
                                    .frame(height: 20)
                                    .padding(.leading)
                                    .padding(.vertical)
                                    
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                        
                                        Button("Adicionar") {
                                            //inserir action
                                        }
                                        .padding(.vertical)
                                    }
                                    .frame(width: 73, height: 20)
                                    .font(.footnote)
                                    .padding(.trailing)
                                    .padding(.vertical)
                                }
                                
                                ScrollView {
                                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                                        TreatmentItemNewPatient(description: "Tratamento Pós-Cirurgico")
                                            .padding(.horizontal)
                                        
                                        TreatmentItemNewPatient(description: "Artuculação")
                                            .padding(.horizontal)
                                        
                                        TreatmentItemNewPatient(description: "Linguágem Pragmatica")
                                            .padding(.horizontal)
                                        
                                        TreatmentItemNewPatient(description: "Tratamento Traumológico")
                                            .padding(.horizontal)
                                        
                                        
                                        Spacer()
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.top, 5)
                                .padding(.bottom)
                            }
                        }
                    }
                }
                .frame(height: CGFloat(addingTreatment ? 278 : 46), alignment: .center)
                .padding(.horizontal)
                
                Spacer()
                
                Button("Cadastrar") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(BlueButton())
            }
        }
    }
}

struct RegisterPatient_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPatient()
    }
}
