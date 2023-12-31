//
//   CategoryHome.swift
//  SwiftUIProject
//
//  Created by Berkin Koca on 11.07.2023.
//

import SwiftUI

struct CategoryHome: View {
     @EnvironmentObject var modelData : ModelData
     
     var body: some View {
          NavigationView{
               List{
                    PageView(pages: modelData.features.map{ FeatureCard(landmark: $0)} )
                         .aspectRatio(3 / 2, contentMode: .fit)
                    
                    modelData.features[0].image
                         .resizable()
                         .scaledToFill()
                         .frame(height: 200)
                         .clipped()
                         .listRowInsets(EdgeInsets())
                    
                    ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                         CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    }
                    .listRowInsets(EdgeInsets())
               }
                    .navigationTitle("Featured")
          }
     }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
              .environmentObject(ModelData())
    }
}
