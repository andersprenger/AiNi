//
//  CreateNewTreatment.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 17/05/21.
//

import SwiftUI

struct CreateNewTreatment: View {
    var todosTratamentos : ProCurrentTreatments
    
    @State var name : String = ""
    @State var description : String = ""
    @State var pacientName : String = ""
    @State var addPacient : Bool = false
    @Environment(\.presentationMode) var presentationMode
    var deuNil = ProCurrentTreatments.mockDosTratamentos.treatments[0]
    @State var addPacientsController : Int = 0
    @State var treatment : TreatmentDetailsModel? = nil
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
                            Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Adicionar Pacientes").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                        }
                        .onTapGesture {
                            
                            
                            if  addPacientsController == 0 {
                            treatment = TreatmentDetailsModel()
                            
                            }
                            
                            addPacientsController += 1
                            addPacient.toggle()
                        }
                        .sheet(isPresented: $addPacient) {
                            PacientsOfTheTreatment( tratamento: treatment ?? deuNil )
                        }
                       
                        
                    }.padding()
                }.background(CardsGradientStyle().opacity(0.1).cornerRadius(15))
                
                Spacer()
                
                Button("concluir"){
                    if treatment == nil {
                         let treatment = TreatmentDetailsModel()
                        treatment.treatmentName=name
                        treatment.description = description
                        todosTratamentos.treatments.append(treatment)
                        presentationMode.wrappedValue.dismiss()
                    }else{
                    
                        treatment?.treatmentName=name
                        treatment?.description = description
                        todosTratamentos.treatments.append(treatment ?? deuNil)
                        presentationMode.wrappedValue.dismiss()
                        
                    }
                    
                    
                }.buttonStyle(BlueButton())
                
            }.navigationBarHidden(true)
            .padding()
            
            
        }.navigationBarTitle("Novo Tratamento")
    }
}

struct CreateNewTreatment_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewTreatment(todosTratamentos: .init())
    }
}
