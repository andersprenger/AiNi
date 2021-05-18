//
//  CreateNewTreatment.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 17/05/21.
//

import SwiftUI

struct CreateNewTreatment: View {
    
    @State var name : String = "Nome do Tratamento"
    @State var description : String = "Descrição"
    @State var pacientName : String = ""
    var body: some View {
        NavigationView{
            
            VStack{
                ZStack{
                    ZStack {
                        TextField("Nome do Tratamento", text: $name).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                        
                    }.padding()
                    .background(CardsGradientStyle().opacity(0.1))
                    .cornerRadius(15)
                    
                    
                    
                }
                ZStack {
                    
                    TextField("Descrição", text: $description).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                    
                }.padding()
                .background(CardsGradientStyle().opacity(0.1))
                .cornerRadius(15)
                ZStack{
                    VStack{
                        HStack{
                            
                            Text("Adicionar Pacientes").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                            
                            Spacer()
                        }
                        HStack{
                            TextField("Pesquisar Pacientes", text: $pacientName).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5)).textFieldStyle(RoundedBorderTextFieldStyle.init())
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Adicionar").font(.custom("SF Pro Display", size: 12)).padding()
                            }).background(Color.white).cornerRadius(10)
                            
                            
                        }
                        ScrollView{
                            ForEach(1...5, id: \.self) {_ in
                                HStack{
                                    ListedPacientView()
                                    Spacer()
                                    Image(systemName: "minus.circle")
                                }
                            }
                        }
                    }.padding()
                }.background(CardsGradientStyle().opacity(0.1))
                
                
                BlueButton()
                
            }.navigationBarHidden(true)
            .padding()
            
            
        }.navigationBarTitle("bergmann")
    }
}

struct CreateNewTreatment_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewTreatment()
    }
}
