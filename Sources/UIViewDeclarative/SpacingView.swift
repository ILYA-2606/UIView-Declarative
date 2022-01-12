// SpacingView.swift
// Copyright © Darkness Production. All rights reserved.

import UIKit

/// Empty view with vertical spacing
public final class VSpacingView: UIView {
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

/// Empty view with horizontal spacing
public final class HSpacingView: UIView {
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
