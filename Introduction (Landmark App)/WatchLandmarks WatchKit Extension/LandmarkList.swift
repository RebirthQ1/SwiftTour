//
//  LandmarkList.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RebirthQ on 2022/7/29.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoriteOnly = false
  
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter{ landmark in
      (!showFavoriteOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationView {
      //List|ForEach 参数需要一个唯一标识，例如此处的id。否则则需要使Landmark遵循Identifiable协议
      List {
        Toggle(isOn: $showFavoriteOnly){
          Text("Favorites Only")
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
      .environmentObject(ModelData())
  }
}
