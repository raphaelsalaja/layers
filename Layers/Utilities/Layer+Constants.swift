//
//  Layer+Constants.swift
//  Eyedee
//
//  Created by Raphael Salaja on 29/09/2023.
//

import SwiftUI

public enum Constants {
    enum Luminance {
        static let red: CGFloat = 0.2126
        static let green: CGFloat = 0.7152
        static let blue: CGFloat = 0.0722
        static let threshold: CGFloat = 0.7
    }

    enum Scale {
        static let pressed: CGFloat = 0.85
        static let brightness: CGFloat = 0.85
    }

    enum Styling {
        static let padding: EdgeInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
    }

    enum Animations {
        enum Namespaces {
            static let namespace: Namespace.ID = Namespace().wrappedValue
            static let background = "layer.background"
            static let mask = "layer.mask"
            static let title = "layer.title"
            static let description = "layer.description"
            static let content = "layer.content"
        }

        enum Transitions {
            static let imagePicker: AnyTransition =
                .asymmetric(
                    insertion: .opacity.animation(.default.delay(0.30)).combined(with: .scale(scale: 0.9).animation(.default.delay(0.30))),
                    removal: .opacity
                )
        }
    }

    enum Colors {
        static let background: Color = .init(.systemBackground)
    }
}
