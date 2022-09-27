//
//  Landmark.swift
//  Landmarks
//
//  Created by Zehra on 14.07.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var isFavorite: Bool
    
    /*init(id: Int, name: String, park: String, state: String, description: String, imageName: String) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description =  description
        self.imageName = imageName
        //self.coordinates = coordinates
    }*/
}
