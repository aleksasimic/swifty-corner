//
//  View+HideNavigation.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/2/23.
//

import SwiftUI

extension View {
    func navigationBarEntirelyHidden() -> some View {
        return self.navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct View_HideNavigation: View {
    var body: some View {
        Text("This is a view with hidden navigation!")
            .navigationBarEntirelyHidden()
    }
}

struct View_HideNavigation_Previews: PreviewProvider {
    static var previews: some View {
        View_HideNavigation()
    }
}
