//
//  AtributesOfTheTreatment.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 21/05/21.
//

import SwiftUI

struct AtributesOfTheTreatment: View {
    
    @State var tratamento : TreatmentDetailsModel
    @State var name: String
    @State var description: String
    @State var addPacient: Bool = false
        
    var body: some View {
        
        NavigationView{
            VStack{
                
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
                            addPacient.toggle()
                        }
                        .sheet(isPresented: $addPacient) {
                            PacientsOfTheTreatment( tratamento: tratamento  )
                        }
                    }.padding()
                }.background(CardsGradientStyle().opacity(0.1).cornerRadius(15))
                Spacer()
                Button("concluir"){
                    tratamento.treatmentName=name
                    tratamento.description = description
                    
                    
                }.buttonStyle(BlueButton())
                
            }.navigationBarHidden(true)
            .padding()
            
            
        }.navigationBarTitle("Novo Tratamento")
    }
    
    
}


//struct AtributesOfTheTreatment_Previews: PreviewProvider {
//    static var previews: some View {
//        AtributesOfTheTreatment()
//    }
//}
