//
//  AddNewPacient.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import SwiftUI

struct AddNewPacient: View {
    
    
    @State var pacientName : String = ""
    var body: some View {
        VStack{
            ZStack{
                VStack{
                
                    HStack{
                        TextField("Pesquisar Pacientes", text: $pacientName).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5)).textFieldStyle(RoundedBorderTextFieldStyle.init())
                        
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Adicionar").font(.custom("SF Pro Display", size: 12)).padding()
                        }).background(Color.white).cornerRadius(10)
                        
                        
                    }
                    ScrollView{
                    ForEach(1...3, id: \.self) {_ in
                        HStack{
                            ListedPacientView()
                            Spacer()
                            Image(systemName: "minus.circle")
                        }
                    }
                    }
                }.padding()
            }.background(CardsGradientStyle().opacity(0.1)).padding()
            
            
            BlueButton()
        
        }
    }
}

struct AddNewPacient_Previews: PreviewProvider {
    static var previews: some View {
        AddNewPacient()
    }
}
