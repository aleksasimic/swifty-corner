//
//  ThirdPartyLibrariesCatalogue.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI

struct ThirdPartyLibrariesCatalogueView: View {
    enum Library {
        case iPhoneNumberTextField
    }
    var body: some View {
        List {
            NavigationLink(destination: NumberTextField(), label: {
                RowView(title: "iPhoneNumberTextField")
            })
        }
    }
}

struct ThirdPartyLibrariesCatalogueView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPartyLibrariesCatalogueView()
    }
}
