//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RebirthQ on 2022/7/24.
//

import SwiftUI

struct ContentView: View {
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
