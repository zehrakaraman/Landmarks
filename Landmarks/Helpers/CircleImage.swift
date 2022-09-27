//
//  CircleImage.swift
//  Landmarks
//
//  Created by Zehra on 14.07.2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        /*Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 8)*/
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 8)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
