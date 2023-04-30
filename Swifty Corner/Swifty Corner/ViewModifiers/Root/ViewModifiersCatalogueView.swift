//
//  ViewModifiersCatalogueView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/30/23.
//

import SwiftUI

struct ViewModifiersCatalogueView: View {
    var body: some View {
        List {
            NavigationLink(destination: TapAndLongPressView(), label: {
                RowView(title: "TapAndLongPress ViewModifier")
            })
        }
    }
}

struct ViewModifiersCatalogueView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifiersCatalogueView()
    }
}
