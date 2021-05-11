//
//  Settings.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI
import UIKit

struct Settings: View {
    var body: some View {
        HStack {
            Button(action: actionSheet) {
                Text("🙈 Compartilhar App ")
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.black)
            }
            
        }
    }
    
    func actionSheet() {
           guard let urlShare = URL(string: "aini.com") else { return }
           let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
           UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
       }
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }
}
