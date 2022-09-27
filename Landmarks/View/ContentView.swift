//
//  ContentView.swift
//  Landmarks
//
//  Created by Zehra on 14.07.2021.
//

import SwiftUI

struct ContentView: View {
    //var landmark: Landmark
    
    var body: some View {
            LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
