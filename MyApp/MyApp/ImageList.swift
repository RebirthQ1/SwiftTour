//
//  ImageList.swift
//  MyApp
//
//  Created by RebirthQ on 2022/8/12.
//

import SwiftUI

struct ImageList: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    ForEach(0..<7) { index in
                        NavigationLink(destination: EachPage()) {
                            ImageRow()
                        }
                    }
                }
            }
            .navigationTitle("Title")
        }
    }
}

struct ImageList_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}
