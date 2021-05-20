//
//  AddNewPacient.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import SwiftUI

struct PacientsOfTheTreatment: View {
    
    @ObservedObject var todosPacientes : AllPacientsModel = AllPacientsModel.mockDosPacientes
    
    @State var pacientName : String = ""
    var body: some View {
        VStack{
            ZStack{
                VStack{
                Text("Adicionar Paciente")
                    HStack{
                        TextField("Pesquisar Pacientes", text: $pacientName).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5)).textFieldStyle(RoundedBorderTextFieldStyle.init())
                        
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Adicionar").font(.custom("SF Pro Display", size: 12)).padding()
                        }).background(Color.white).cornerRadius(10)
                        
                        
                    }
                    ScrollView{
                        ForEach(todosPacientes.pacients, id: \.self) {pacient in
                        HStack{
                            ListedPacientView(nome: pacient.name, image: pacient.name)
                            Spacer()
                            Image(systemName: "minus.circle")
                        }
                    }
                    }
                }.padding()
            }.background(CardsGradientStyle().opacity(0.1).cornerRadius(15)).padding()
            
            Button("textinho"){
                
            }
            .buttonStyle(BlueButton())
                    
        }
    }
}

struct PacientsOfTheTreatment_Previews: PreviewProvider {
    static var previews: some View {
        PacientsOfTheTreatment()
    }
}
