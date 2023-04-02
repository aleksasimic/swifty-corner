//
//  ExtensionsCatalogue.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI

struct ExtensionsCatalogueView: View {
    var body: some View {
        List {
            NavigationLink(destination: View_HideNavigation(), label: {
                RowView(title: "View+HideNavigation")
            })
            NavigationLink(destination: View_If(), label: {
                RowView(title: "View+If")
            })
        }
    }
}

struct ExtensionsatalogueView_Previews: PreviewProvider {
    static var previews: some View {
        ExtensionsCatalogueView()
    }
}
