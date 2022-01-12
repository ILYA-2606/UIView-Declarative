# UIView-Declarative

Use UIKit declaratively!

```swift
view.add {
    VStackView().add {
        VSpacingView(10)
        headerView
        bodyView
        footerView
        VSpacingView(10)
    }
}
```
