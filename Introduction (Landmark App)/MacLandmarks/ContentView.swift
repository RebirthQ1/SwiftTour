//
//  ContentView.swift
//  MacLandmarks
//
//  Created by RebirthQ on 2022/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(
                minWidth: 1000, minHeight: 600
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
