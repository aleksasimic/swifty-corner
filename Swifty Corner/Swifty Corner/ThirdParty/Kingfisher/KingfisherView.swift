//
//  KingfisherView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/11/23.
//

import SwiftUI
import Kingfisher

struct KingfisherView: View {
    var body: some View {
        KFImage(URL(string: "https://static.wikia.nocookie.net/logopedia/images/4/48/Xcode_1024x1024x32.png/revision/latest?cb=20200528092719"))
            .placeholder({
                ProgressView()
            })
            .resizable()
            .scaledToFit()
    }
}

struct KingfisherView_Previews: PreviewProvider {
    static var previews: some View {
        KingfisherView()
    }
}
