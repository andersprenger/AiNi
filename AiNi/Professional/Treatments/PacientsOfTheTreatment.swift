//
//  AddNewPacient.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import SwiftUI

struct PacientsOfTheTreatment: View {
    @Environment (\.presentationMode) var presentationMode
    @ObservedObject var todosPacientes : AllPacientsModel = AllPacientsModel.mockDosPacientes
    @State var tratamento : TreatmentDetailsModel
    @State var pacientName : String = ""
    @State var atualisaView : Int = 0
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
                        ForEach(todosPacientes.pacients) {pacient in
                            HStack{
                                ListedPacientView(nome: pacient.name, image: pacient.name)
                                Spacer()
                                
                                
                                    if StepDetailsModel.isInTreatment(tratamento: tratamento, paciente: pacient){
                                        Image(systemName: "minus.circle").onTapGesture {
                                            tratamento.thisTreatmentPacients.removeAll{ paci in
                                                return paci.name == pacient.name
                                            }
                                            atualisaView += 1
                                            pacient.auxiliarGambiarra+=1
                                        }
                                    }else{
                                        Image(systemName: "plus.circle").onTapGesture {
                                            tratamento.thisTreatmentPacients.append(pacient)
                                            pacient.auxiliarGambiarra+=1
                                            atualisaView += 1
                                            
                                        }.onDisappear()
                                    }
                            }
                        }.id(tratamento.thisTreatmentPacients.count )
                    }
                }.padding()
            }.background(CardsGradientStyle().opacity(0.1).cornerRadius(15)).padding()
            
            Button("Concluir"){
                self.presentationMode.wrappedValue.dismiss()
            }
            .buttonStyle(BlueButton())
        }
    }
}

struct PacientsOfTheTreatment_Previews: PreviewProvider {
    static var previews: some View {
        PacientsOfTheTreatment( tratamento: ProCurrentTreatments.mockDosTratamentos.treatments[0])
    }
}
