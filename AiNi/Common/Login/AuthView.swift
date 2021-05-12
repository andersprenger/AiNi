//
//  AuthView.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 12/05/21.
//

import SwiftUI

struct AuthView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.4)
            VStack {
                HStack(alignment:.top) {
                    HStack {
                        Spacer()
                        Text("Login")
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
                    Text("Login")
                        .font(.title2)
                    Text("Login")
                        .font(.title2)
                    Text("Login")
                        .font(.title2)
                }
                Spacer()
            }
        }
        
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
