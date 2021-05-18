//
//  ListedPacientView.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import SwiftUI

struct ListedPacientView: View {
    var body: some View {
        ZStack{
            HStack{
                
                Image("patient-image")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Robertinho")
                
                
                
            }
        }.frame(maxHeight:49)
        
    }
}

struct ListedPacientView_Previews: PreviewProvider {
    static var previews: some View {
        ListedPacientView()
    }
}
