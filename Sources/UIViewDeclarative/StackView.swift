// StackView.swift
// Copyright © Darkness Production. All rights reserved.

import UIKit

/// StackView with vertical axis
public class VStackView: UIStackView {
    public init(spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) {
        super.init(frame: .zero)
        axis = .vertical
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }

    required public init(coder: NSCoder) { super.init(coder: coder) }
}

/// StackView with horizontal axis
public class HStackView: UIStackView {
    public init(spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) {
        super.init(frame: .zero)
        axis = .horizontal
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }

    required public init(coder: NSCoder) { super.init(coder: coder) }
}
