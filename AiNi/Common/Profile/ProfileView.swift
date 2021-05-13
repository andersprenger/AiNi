//
//  ProfileView.swift
//  AiNi
//
//  Created by Anderson Sprenger on 08/05/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 32){
            ProfileHeader()
            
            VStack (alignment: .center, spacing: 18){
                HStack {
                    Button(action: actionSheet) {
                        Text("🙈 Compartilhar App ")
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.black)
                    }
                    
                }
                
                RoundedRectangle(cornerRadius: 28)
                    .frame(height: 60, alignment: .center)
                    .foregroundColor(Color("card-color"))
                
                RoundedRectangle(cornerRadius: 28)
                    .frame(height: 60, alignment: .center)
                    .foregroundColor(Color("card-color"))
                
                RoundedRectangle(cornerRadius: 28)
                    .frame(height: 60, alignment: .center)
                    .foregroundColor(Color("card-color"))
                
                Spacer()
            }
            
        }
        .padding()
    }
    
    func actionSheet() {
        guard let urlShare = URL(string: "aini.com") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
