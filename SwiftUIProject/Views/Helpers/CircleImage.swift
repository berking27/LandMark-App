//
//  CircleImage.swift
//  SwiftUIProject
//
//  Created by Berkin Koca on 10.07.2023.
//

import SwiftUI

struct CircleImage: View {
     
     var image : Image
     
    var body: some View {
         image
              .clipShape(Circle())
              .overlay{
                   Circle().stroke(.white ,lineWidth: 6)
              }
              .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
