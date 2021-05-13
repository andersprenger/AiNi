//
//  ModalNovaEtapa.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

// FIXME: Make me testable!

import SwiftUI

struct ModalNewStep: View {
    
    // MARK --TODO: review this with mentors...
    @ObservedObject var viewModel : StepDetailsModel
    @Binding var novaEtapa : Bool
    @State var activityTime = false
    @State var frequency = false
    @State var byStep : String = ""
    @State var stepName : String = "Nova Estapa"
    @State var stepTitle : String = ""
    var completeStep : (( String, String,  Bool, Bool) -> Void)
    
    var body: some View {
        VStack {
            ZStack {
                VStack (alignment: .center){
                    Text(self.viewModel.title)
                        .font(.title)
                }
                
                VStack (alignment: .trailing) {
                    HStack {
                        Spacer()
                        
                        Text("Lixo")
                    }
                }
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Título:")
                    
                    Spacer()
                }
                
                TextField("\(viewModel.title)", text: $stepTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Passo a passo:")
                    
                    Spacer()
                }
                
                
                TextField("\(viewModel.stepByStep)", text: $byStep)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 40.0)
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Adicionar Imagem:")
                    
                    Spacer()
                }
                
                // FIXME: adicionar imagem aqui
            }
            .padding()
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray5))
                
                HStack {
                    Toggle(isOn: $activityTime){
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40, alignment:.center)
                                .foregroundColor(Color(.systemGray6))
                                .padding(.leading)
                            
                            Text("TEMPO DA ATIVIDADE")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray5))
                
                HStack {
                    Toggle(isOn: $frequency){
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40, alignment:.center)
                                .foregroundColor(Color(.systemGray6))
                                .padding(.leading)

                            Text("FREQUÊNCIA")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 150, height: 45, alignment: .center)
                    .foregroundColor(Color(.systemGray6))
                
                Text("concluir")
                    .font(.footnote)
                
            }.onTapGesture {
                self.completeStep(stepTitle,byStep,activityTime,frequency)
                novaEtapa = false
            }
            
        }.onAppear {
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
