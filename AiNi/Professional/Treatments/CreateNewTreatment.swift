//
//  CreateNewTreatment.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 17/05/21.
//

import SwiftUI

struct CreateNewTreatment: View {
    var todosTratamentos : ProCurrentTreatments
    
    @State var name : String = "Nome do Tratamento"
    @State var description : String = "Descrição"
    @State var pacientName : String = ""
    @State var addPacient : Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            
            VStack{
                Spacer()
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
                        }.onTapGesture {
                            addPacient.toggle()
                        }
                        .sheet(isPresented: $addPacient) {
                            PacientsOfTheTreatment()
                        }
                       
                        
                    }.padding()
                }.background(CardsGradientStyle().opacity(0.1))
                
                Spacer()
                
                Button("concluir"){
                    let treatment = TreatmentDetailsModel()
                    treatment.treatmentName=name
                    treatment.description = description
                    todosTratamentos.treatments.append(treatment)
                    presentationMode.wrappedValue.dismiss()
                }
                
            }.navigationBarHidden(true)
            .padding()
            
            
        }.navigationBarTitle("bergmann")
    }
}

struct CreateNewTreatment_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewTreatment(todosTratamentos: .init())
    }
}
