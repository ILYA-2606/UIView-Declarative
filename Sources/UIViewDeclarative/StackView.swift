// StackView.swift
// Copyright © Darkness Production. All rights reserved.

import UIKit

/// StackView with vertical axis
open class VStackView: UIStackView {
    open init(spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) {
        super.init(frame: .zero)
        axis = .vertical
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }

    required init(coder: NSCoder) { super.init(coder: coder) }
}

/// StackView with horizontal axis
open class HStackView: UIStackView {
    open init(spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) {
        super.init(frame: .zero)
        axis = .horizontal
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }

    required init(coder: NSCoder) { super.init(coder: coder) }
}
