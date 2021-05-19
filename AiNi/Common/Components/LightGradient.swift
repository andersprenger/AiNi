//
//  LightGradient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 18/05/21.
//

import SwiftUI

struct LightGradient: View {
    var body: some View {
        // TODO: update this
        LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)    }
}

struct LightGradient_Previews: PreviewProvider {
    static var previews: some View {
        LightGradient()
    }
}
