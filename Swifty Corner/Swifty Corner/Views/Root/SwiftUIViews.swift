//
//  SwiftUIViews.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/30/23.
//

import SwiftUI

struct SwiftUIViews: View {
    var body: some View {
        List {
            NavigationLink(destination: Spinner(), label: {
                RowView(title: "Spinner View")
            })
        }
    }
}

struct SwiftUIViews_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViews()
    }
}
