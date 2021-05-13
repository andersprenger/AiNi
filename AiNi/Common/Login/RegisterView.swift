//
//  RegisterView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.4)
            VStack {
                HStack(alignment:.top) {
                    HStack {
                        Spacer()
                        Text("Abra sua Conta")
                            .font(.title2)
                        Spacer()
                        Button("X") {
                            presentationMode.wrappedValue.dismiss()
                        }.font(.title3)
                    }
                }
                .padding()
                Spacer()
                VStack(alignment: .center) {
                    Text("Abra sua Conta")
                        .font(.title2)
                    Text("Abra sua Conta")
                        .font(.title2)
                    Text("Abra sua Conta")
                        .font(.title2)
                }
                Spacer()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
