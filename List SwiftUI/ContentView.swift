//
//  ContentView.swift
//  List SwiftUI
//
//  Created by Gil Rodarte on 22/08/19.
//  Copyright © 2019 Gil Rodarte. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.getAll()
    var body: some View {
        NavigationView {
            List(hikes) { hike in
                HikeCell(hike: hike)
            }
            .navigationBarTitle("Hakings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike: Hike
    var body: some View {
        return NavigationLink(destination: HikeDetail(hike: hike)) {
            HStack {
                Image(hike.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text(String(format: "%.2f", hike.miles) + " Miles")
                }
            }
        }
    }
}
