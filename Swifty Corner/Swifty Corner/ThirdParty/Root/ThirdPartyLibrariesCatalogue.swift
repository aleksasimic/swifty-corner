//
//  ThirdPartyLibrariesCatalogue.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI

struct ThirdPartyLibrariesCatalogueView: View {
    var body: some View {
        List {
            NavigationLink(destination: NumberTextField(), label: {
                RowView(title: "iPhoneNumberTextField")
            })

            NavigationLink(destination: KingfisherView(), label: {
                RowView(title: "Kingfisher")
            })

            NavigationLink(destination: LottieScreen(), label: {
                RowView(title: "Lottie animations")
            })
        }
    }
}

struct ThirdPartyLibrariesCatalogueView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPartyLibrariesCatalogueView()
    }
}
