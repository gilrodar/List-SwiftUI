//
//  HikeDetail.swift
//  List SwiftUI
//
//  Created by Gil Rodarte on 23/08/19.
//  Copyright © 2019 Gil Rodarte. All rights reserved.
//

import Foundation
import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
                .font(.title)
                .padding(.top, 60)
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.getAll()[0])
    }
}
