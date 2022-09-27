//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Zehra on 16.07.2021.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            /*List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }*/
            
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Landmarks")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        modelData.landmarks.remove(atOffsets: offsets)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
