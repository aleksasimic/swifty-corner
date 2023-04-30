//
//  Spinner.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/30/23.
//

import SwiftUI

public struct Spinner: View {
    @State private var isAnimating = false

    public init(isAnimating: Bool = false) {
        self.isAnimating = isAnimating
    }

    private var foreverAnimation: Animation {
        Animation.linear(duration: 1.0)
            .repeatForever(autoreverses: false)
    }

    public var body: some View {
        spinner
            .frame(width: 24, height: 24)
            .foregroundColor(.purple)
    }

    var spinner: some View {
        ZStack {
            Image("SpinnerBottom")
                .resizable()
                .opacity(0.1)
            Image("SpinnerTop")
                .resizable()
        }
        .rotationEffect(Angle(degrees: isAnimating ? 360.0 : 0.0))
        .onAppear {
            withAnimation(foreverAnimation) {
                isAnimating = true
            }
        }
    }
}

struct Spinner_Previews: PreviewProvider {
    static var previews: some View {
        Spinner()
    }
}
