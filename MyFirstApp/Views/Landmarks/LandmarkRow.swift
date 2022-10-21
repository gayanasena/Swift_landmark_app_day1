//
//  LandmarkRow.swift
//  MyFirstApp
//
//  Created by Stephen Innovations on 2022-10-19.
//

import SwiftUI

struct LandmarkRow: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName:"star.fill")
                    .foregroundColor(Color(.yellow))
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        
        Group {
            LandmarkRow(landmark: landmarks[0])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
        
    }
}