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
    var body: some View {
        NavigationView{
            
        VStack{
            ZStack{
            ZStack {
                TextField("Nome do Tratamento", text: $name)
                
            }.padding()
            .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .leading, endPoint: .trailing).opacity(0.1))
            .cornerRadius(15)
            
                
                
            }
            ZStack {
                
                TextField("Descrição", text: $description)
                
            }.padding()
            .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .leading, endPoint: .trailing).opacity(0.1))
            .cornerRadius(15)
            
            
            
            
        }.navigationBarHidden(true)
            
        }.navigationBarTitle("bergmann")
    }
}

struct CreateNewTreatment_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewTreatment()
    }
}
