//
//  CreateNewTreatment.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 17/05/21.
//

import SwiftUI

struct CreateNewTreatment: View {
    
    @State var name : String = ""
    @State var description : String = ""
    @State var pacientName : String = ""
    var body: some View {
        NavigationView{
            
            VStack{
                ZStack{
                    ZStack {
                        TextField("Nome do Tratamento", text: $name)
                        
                    }.padding()
                    .background(CardsGradientStyle().opacity(0.1))
                    .cornerRadius(15)
                    
                    
                    
                }
                ZStack {
                    
                    TextField("Descrição", text: $description)
                    
                }.padding()
                .background(CardsGradientStyle().opacity(0.1))
                .cornerRadius(15)
                ZStack{
                    VStack{
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "plus")
                                Text("Adicionar Pacientes")
                            }
                            Spacer()
                        }
                        HStack{
                            TextField("Pesquisar Pacientes", text: $pacientName).background(Color.white)
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Adicionar").font(.custom("SF Pro Display", size: 12)).padding()
                            }).background(Color.white)
                            
                            
                        }
                        
                        ForEach(1...5, id: \.self) {_ in
                            HStack{
                                ListedPacientView()
                                Spacer()
                                Image(systemName: "minus.circle")
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
