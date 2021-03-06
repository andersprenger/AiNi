//
//  CustomTextField.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 17/05/21.
//

import SwiftUI

struct CustomTextField: View {
    
    //    var image: String
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    @State var actualDate = Date()
    var title: String
    @Binding var value: String
    
    //    var animation: Namespace.ID
    
    var body: some View {
        HStack(alignment: .center) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                if value == ""{
                    Text(title)
                        .foregroundColor(.gray)
                }
                if (title == "Senha") {
                    SecureField("", text: $value)
                } else if (title == "Celular"){
                    TextField("", text: $value)
                        .keyboardType(.numberPad)
                        .textContentType(.telephoneNumber)
                } else if (title == "E-mail"){
                    TextField("", text: $value)
                        .textCase(.lowercase)
                        .keyboardType(.emailAddress)
                        .textContentType(.emailAddress)
                        .disableAutocorrection(true)
                } else if (title == "Profissão"){
                    TextField("", text: $value)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                } else if (title == "Especialização"){
                    TextField("", text: $value)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                } else if (title == "Nome Completo"){
                    TextField("", text: $value)
                        .keyboardType(.alphabet)
                        .textContentType(.name)
                        .disableAutocorrection(true)
                } else {
                    DatePicker("Data de Nascimento", selection: $actualDate, in: ...Date(), displayedComponents: .date)
                        .foregroundColor(.gray)
                    
//                        .onAppear{
//                            self.dis
//                        }
//                        .datePickerStyle(WheelDatePickerStyle())
                        
                        
                }
                
            }
            .padding(.horizontal, 20.0)
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 10)
        .background(LightGradientStyle())
        .cornerRadius(18)
        
    }
    
    
}
