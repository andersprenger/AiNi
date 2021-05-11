//
//  CircleImage.swift
//  AiNi
//
//  Uma imagem com formato circular.
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var size: Int
    
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(Circle())
            .scaledToFill()
            .frame(width: 86, height: 86, alignment: .center)
    }
}
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "patient-image", size: 86)
            .previewLayout(.fixed(width: 96, height: 96))
    }
}
