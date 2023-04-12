//
//  LottieView.swift
//  Swifty Corner
//
//  Created by Aleksa Simic on 4/11/23.
//

import SwiftUI
import Lottie

struct LottieScreen: View {
    var body: some View {
        VStack {
            Spacer()
            LottieView(lottieFile: "confetti")
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LottieScreen_Previews: PreviewProvider {
    static var previews: some View {
        LottieScreen()
    }
}

struct LottieView: UIViewRepresentable {
    let lottieFile: String

    let animationView = LottieAnimationView()

    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)

        animationView.animation = LottieAnimation.named(lottieFile)
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        animationView.play()

        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
