# UIView-Declarative
![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)


## Use UIKit declaratively!

UIView-Declarative is a lightweight extension for UIView that allows you to configure the view hierarchy in a declarative style, as in SwiftUI

## Example

```swift
view.add(insets: .zero) {
    VStackView(spacing: 10).add {
        VSpacingView(10)
        MyHeaderView()
        MyBodyView()
        MyFooterView()
        VSpacingView(10)
    }
}
```

Use it with [PreviewUIKit](https://github.com/ILYA2606/UIPreview) and [Then](https://github.com/devxoul/Then)

## Installation

- **Using [Swift Package Manager](https://swift.org/package-manager)**:

    ```swift
    import PackageDescription

    let package = Package(
      name: "MyAwesomeApp",
      dependencies: [
        .Package(url: "https://github.com/ILYA2606/UIView-Declarative", majorVersion: 1),
      ]
    )
    ```
