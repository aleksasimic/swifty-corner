//
//  NumberTextField.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/1/23.
//

import SwiftUI
import iPhoneNumberField

struct NumberTextField: View {
    @State var text = ""

    var body: some View {
        iPhoneNumberField("000-000-000", text: $text)
            .flagHidden(false)
            .flagSelectable(true)
            .font(UIFont(size: 30, weight: .bold, design: .rounded))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.orange)
            .padding()
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        NumberTextField()
    }
}
