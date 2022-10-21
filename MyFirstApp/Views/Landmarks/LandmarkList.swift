//
//  LandmarkList.swift
//  MyFirstApp
//
//  Created by Stephen Innovations on 2022-10-19.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavorits = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{ Landmark in
            (!showFavorits || Landmark.isFavorite)
        }
    }
    
    var body: some View {
            NavigationView {
                List {
                    Toggle(isOn: $showFavorits){
                        Text("Favourits Only")
                    }
                    ForEach(filteredLandmarks) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
