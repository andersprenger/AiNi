//
//  ModalNovaEtapa.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import SwiftUI

struct ModalNewStep: View {
    
    
    @ObservedObject var viewModel : StepDetailsModel
    @Binding var novaEtapa : Bool
    @State var activityTime = false
    @State var frequency = false
    @State var byStep : String = ""
    @State var stepName : String = "Nova Estapa"
    @State var stepTitle : String = ""
    var completeStep : ( ( String, String,  Bool, Bool) -> Void)
    
    var body: some View {
        VStack{
            HStack{
                
                
                Text("\(self.viewModel.title)")
                    .padding(.leading, 120)
                    .font(.title)
                
                Spacer()
                Text("Lixo").padding()
                
            }
            
            HStack{
                
                Text("Título: ").padding()
                    
                Spacer()
            }
            
            TextField("\(viewModel.title)", text: $stepTitle).padding()
            
           
            HStack{
                
                Text("Passo a passo:").padding()
                    
                Spacer()
            }
            
            
            TextField("\(viewModel.stepByStep)", text: $byStep).frame(height: 40.0).padding()
            
            HStack{
                Text("Adicionar Imagem:")
                Spacer()
            }.padding()
            
           //adicionar imagem aqui

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
                
            }.onTapGesture{
                self.completeStep(stepTitle,byStep,activityTime,frequency)
                novaEtapa = false
            }
            
        }.onAppear{
            self.activityTime = viewModel.activityTime
            self.frequency = viewModel.frequency
        }
        
        
    }
    
}

//struct ModalNewStep_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalNewStep()
//    }
//}
