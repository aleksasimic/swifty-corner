//
//  RowView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI

struct RowView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18, weight: .medium))
            Spacer()
            Image(systemName: "arrow.right.circle")
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(title: "Row view")
    }
}
