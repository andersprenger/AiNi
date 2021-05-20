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
    
    var circleSize: CGFloat {
        CGFloat(size - 2)
    }
    
    var borderShapesize: CGFloat {
        CGFloat(size)
    }
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: borderShapesize, height: borderShapesize, alignment: .center)
            
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .frame(width: circleSize, height: circleSize, alignment: .center)
        }
    }
}
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "patient-image", size: 86)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 96, height: 96))
    }
}
