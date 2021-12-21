// SpacingView.swift
// Copyright © Darkness Production. All rights reserved.

import UIKit

public final class VerticalSpacingView: UIView {
    private var heightConstraint: NSLayoutConstraint?
    
    public init(spacing: CGFloat? = nil) {
        super.init(frame: .zero)
        backgroundColor = .clear
        if let spacing = spacing {
            heightConstraint = heightAnchor.constraint(equalToConstant: spacing)
            heightConstraint?.isActive = true
        }
    }

    public func refresh(spacing: CGFloat) {
        heightConstraint?.constant = spacing
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }
}

public final class HorizontalSpacingView: UIView {
    private var widthConstraint: NSLayoutConstraint?
    
    public init(spacing: CGFloat? = nil) {
        super.init(frame: .zero)
        backgroundColor = .clear
        if let spacing = spacing {
            widthConstraint = widthAnchor.constraint(equalToConstant: spacing)
            widthConstraint?.isActive = true
        }
    }

    public func refresh(spacing: CGFloat) {
        widthConstraint?.constant = spacing
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }
}
