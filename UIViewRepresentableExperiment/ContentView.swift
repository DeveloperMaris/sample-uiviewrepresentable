//
//  ContentView.swift
//  UIViewRepresentableExperiment
//
//  Created by Maris Lagzdins on 02/11/2022.
//

import Combine
import SwiftUI

struct LabelView: UIViewRepresentable {
    let text: String
    let color: Color

    init(text: String, color: Color) {
        print("create LabelView")

        self.text = text
        self.color = color
    }

    func makeUIView(context: Context) -> UILabel {
        print("make LabelView")

        /*
         The UILabel is created only once,
         when the current struct is created for the first time.
         All other times, when the struct is re-created,
         it re-uses UILabel which it already has created.
         */
        return UILabel()
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        /*
         When SwiftUI view changes the parameters of this struct,
         it creates a new struct (because the parameters are constants).
         But the underlying UILabel is re-used (the pointer address of the label does not change).
         */

        print("update LabelView")
        print(self, uiView)

        uiView.text = text
        uiView.textColor = UIColor(color)
    }
}

fileprivate extension Color {
    static var random: Color {
        .init(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

class Random: ObservableObject {
    private var cancellable: AnyCancellable?

    @Published var number: Int = 0
    @Published var color: Color = .primary

    init() {
        cancellable = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [unowned self] _ in
                self.number = .random(in: 100...999)
                self.color = .random
            }
    }
}

struct ContentView: View {
    @StateObject private var random = Random()

    var body: some View {
        LabelView(text: String(random.number), color: random.color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
