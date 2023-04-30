//
//  ContentView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI

struct SwiftyCornerRootView: View {
    enum Section {
        case thirdParty
        case extensions
        case viewModifiers
    }

    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack {
                HStack {
                    Image("swiftycornerlogo")
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text("Swifty corner")
                        .font(.system(size: 24, weight: .bold))
                }

                List {
                    RowView(title: "Third party libraries showcase")
                        .onTapGesture {
                            navigationPath.append(Section.thirdParty)
                        }
                    RowView(title: "SwiftUI extensions showcase")
                        .onTapGesture {
                            navigationPath.append(Section.extensions)
                        }
                    RowView(title: "SwiftUI ViewModifiers showcase")
                        .onTapGesture {
                            navigationPath.append(Section.viewModifiers)
                        }
                }
            }
            .navigationDestination(for: Section.self) { section in
                switch section {
                case .thirdParty:
                    ThirdPartyLibrariesCatalogueView()
                case .extensions:
                    ExtensionsCatalogueView()
                case .viewModifiers:
                    ViewModifiersCatalogueView()
                }
            }
        }
    }
}

struct SwiftyCornerRootView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftyCornerRootView()
    }
}
