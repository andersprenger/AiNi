//
//  ModalNovaEtapa.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import SwiftUI

struct ModalNovaEtapa: View {
    @State private var activityTime = false
    @State private var frequency = false
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Lixo").padding()
            }
            HStack{
                
                Text("Nova etapa")
                
            }
            Spacer()
            HStack{
                Text("Passo a passo:")
                Spacer()
            }.padding(.bottom)
            .padding()
            
            
            HStack{
                Text("Adicionar Imagem:")
                Spacer()
            }.padding()
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 327, height: 65, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)))
                
                HStack{
                    Toggle( isOn: $activityTime){
                        HStack{
                            RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 40, alignment:.center).foregroundColor(.gray)
                            
                            Text("TEMPO DA ATIVIDADE").font(.caption)}}
                    
                }.frame(width: 320)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 327, height: 65, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)))
                
                HStack{
                    Toggle( isOn: $frequency){
                        HStack{
                            RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 40, alignment:.center).foregroundColor(.gray)
                            
                            Text("FREQUÊNCIA").frame(width: 116, height: 16).font(.caption)}}
                    
                }.frame(width: 320)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 150, height: 45, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.9176470588, blue: 0.9176470588, alpha: 1)))
                
                Text("concluir")
                    .font(.footnote)
            }
            Spacer()
            
            
            
        }
    }
    
}

struct ModalNovaEtapa_Previews: PreviewProvider {
    static var previews: some View {
        ModalNovaEtapa()
    }
}
