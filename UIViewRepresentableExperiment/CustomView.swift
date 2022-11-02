//
//  CustomView.swift
//  UIViewRepresentableExperiment
//
//  Created by Maris Lagzdins on 02/11/2022.
//

import SwiftUI

struct LabelView: UIViewRepresentable {
    typealias UIViewType = UILabel

    var text: String
    var color: UIColor = .label

    func makeUIView(context: Context) -> UILabel {
        print("makeUIView")
        let _ = Self._printChanges()
        return UILabel()
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        print("updateUIView")
        let _ = Self._printChanges()
        uiView.text = text
        uiView.textColor = color
    }
}
