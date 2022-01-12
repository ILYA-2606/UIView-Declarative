// UIView+Add.swift
// Copyright © Darkness Production. All rights reserved.

import UIKit

/// Builder for adding child views in hierarchical form
@resultBuilder public struct AddViewBuilder {
    static func buildBlock(_ views: UIView...) -> [UIView] {
        views
    }
}

/// Extension for adding child views in hierarchical form
public extension UIView {
    /// Add array of views  in hierarchical form
    /// - Parameter block: A block that returns an array of views
    @discardableResult func add(@AddViewBuilder _ block: () -> ([UIView])) -> UIView {
        if let stackView = self as? UIStackView {
            block().forEach { stackView.addArrangedSubview($0) }
        } else {
            block().forEach { addSubview($0) }
        }
        return self
    }

    /// Add array of views
    /// - Parameter views: Array of views
    @discardableResult func add(_ views: [UIView]) -> UIView {
        if let stackView = self as? UIStackView {
            views.forEach { stackView.addArrangedSubview($0) }
        } else {
            views.forEach { addSubview($0) }
        }
        return self
    }

    /// Inserts one view by index
    /// - Parameter index: Index of view insertion
    /// - Parameter block: A block that returns the view
    @discardableResult func insert(at index: Int, block: () -> (UIView)) -> UIView {
        if let stackView = self as? UIStackView {
            stackView.insertArrangedSubview(block(), at: index)
        } else {
            insertSubview(block(), at: index)
        }
        return self
    }

    /// Add one view and add constraints to it, according to the insets
    /// - Parameter insets: Insets of the child view
    /// - Parameter block: A block that returns the view
    @discardableResult func add(insets: UIEdgeInsets, block: () -> (UIView)) -> UIView {
        let view = block()
        add { view }
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -insets.right),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom)
        ])
        return self
    }
}
