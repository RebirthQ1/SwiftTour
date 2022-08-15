//
//  ImageRow.swift
//  MyApp
//
//  Created by RebirthQ on 2022/8/12.
//

import SwiftUI

struct ImageRow: View {
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image("sunrise")
                .resizable()
                .interpolation(.none)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(25, antialiased: true)
            
            Text("RebirthQ")
                .foregroundColor(.white)
                .opacity(0.6)
                .font(.system(size: 30))
                .padding()
        }
        .padding()
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
