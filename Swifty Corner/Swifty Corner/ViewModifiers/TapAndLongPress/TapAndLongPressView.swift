//
//  TapAndLongPressView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/30/23.
//

import SwiftUI

public struct TapAndLongPressModifier: ViewModifier {
  @State private var isLongPressing = false
  let tapAction: () -> Void
  let longPressAction: () -> Void

  public func body(content: Content) -> some View {
    content
      .scaleEffect(isLongPressing ? 0.9 : 1.0)
      .onTapGesture {
          tapAction()
      }
      .onLongPressGesture(
        minimumDuration: 0.3,
        pressing: { (isPressing) in
        withAnimation {
          isLongPressing = isPressing
        }
      }, perform: {
        longPressAction()
      })
  }
}

public extension View {
    func scaleOnLongPress(
      tapAction: @escaping () -> Void,
      longPressAction: @escaping () -> Void
    ) -> some View {
        modifier(
          TapAndLongPressModifier(
            tapAction: tapAction,
            longPressAction: longPressAction
          )
        )
    }
}

struct TapAndLongPressView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Long press to scale")
                    .padding(16)
                Spacer()
            }
            .background(Color.orange)
            .cornerRadius(26)
            .padding(32)
            Spacer()
        }
        .scaleOnLongPress(tapAction: {
            print("I am long pressing")
        }, longPressAction: {
            print("I am tapping")
        })
    }
}

struct TapAndLongPressView_Previews: PreviewProvider {
    static var previews: some View {
        TapAndLongPressView()
    }
}
