//
//  ContentView.swift
//  PresentModalWithModalStyle
//
//  Created by Punde, Rasika Nanasaheb on 30/05/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?

    var body: some View {
        ZStack {
            Color.red
            Button("Show Details") {
                self.viewControllerHolder?.present(style: .fullScreen) {
                    DetailView()
                }
            }.foregroundColor(.white)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailView: View {
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    var body: some View {
        ZStack {
            Color.blue
            Button("Dismiss") {
                self.viewControllerHolder?.dismiss(animated: true, completion: nil)
            }.foregroundColor(.white)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
