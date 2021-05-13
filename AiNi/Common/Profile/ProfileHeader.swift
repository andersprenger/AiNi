//
//  ProfileHeader.swift
//  AiNi
//
//  Created by Anderson Sprenger on 11/05/21.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .top, spacing: 20){
                CircleImage(imageName: "patient-image", size: 86)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text("Flavio Fonseca")
                            .font(.title2)
                        
                        Image(systemName: "pencil.circle")
                    }
                    
                    Text("Bancário")
                        .font(.subheadline)
                    
                    HStack {
                        Spacer()
                    }
                }
                .padding(.vertical, 8)
            }
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 400, height: 86))
    }
}
