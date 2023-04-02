//
//  View+If.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/2/23.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
      if condition {
        transform(self)
      } else {
        self
      }
    }
}

struct View_If: View {
    @State private var buttonPressed = false
    var body: some View {
        VStack {
            Text("This label will go bold when you press the button")
                .if(
                    buttonPressed,
                    transform: { view in
                        view.bold()
                    }
                )

                Button(action: {
                        buttonPressed.toggle()
                }, label: {
                    Text("Tap here to \(buttonPressed ? "unbold" : "bold") label")
                })
        }
    }
}

struct View_If_Previews: PreviewProvider {
    static var previews: some View {
        View_If()
    }
}
