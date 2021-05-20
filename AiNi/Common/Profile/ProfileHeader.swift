//
//  ProfileHeader.swift
//  AiNi
//
//  Created by Anderson Sprenger on 11/05/21.
//

import SwiftUI

struct ProfileHeader: View {
    
    var loadedPerson: User {
        if let savedUser = UserDefaults.standard.object(forKey: "SavedUser") as? Data {
            let decoder = JSONDecoder()
            do {
                let loadedPerson = try decoder.decode(User.self, from: savedUser)
                print(loadedPerson)
                return loadedPerson
                
            } catch {
                print(error)
            }
            
        }
        fatalError("Should have saved user")
    }
    
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .top, spacing: 20){
                CircleImage(imageName: "patient-image", size: 86)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text(loadedPerson.name)
                            .font(.title2)
                        
                        Image(systemName: "pencil.circle")
                    }
                    
                    Text(loadedPerson.type)
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
