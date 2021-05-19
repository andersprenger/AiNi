//
//  ListedPacientView.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import SwiftUI

struct ListedPacientView: View {
    
    var nome: String
    var image: String
    
    var body: some View {
        ZStack{
            HStack{
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text(nome)
                
                
                
            }
        }.frame(maxHeight:49)
        
    }
}

struct ListedPacientView_Previews: PreviewProvider {
    static var previews: some View {
        ListedPacientView(nome:"Robertinho" , image: "patient-image")
    }
}
