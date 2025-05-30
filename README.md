# 🚀 Avoiding Unnecessary View Re-Renders in SwiftUI

This project demonstrates how to reduce unnecessary view re-renders in SwiftUI, especially when working with `ObservableObject`, and highlights how the new `Observation` framework in iOS 17+ can improve rendering efficiency.

## 📖 Related Article

Want a deep dive into how this works and the reasoning behind each approach?

👉 [Read the full article on Medium](https://medium.com/@tungvt.it.01/avoiding-unnecessary-view-re-renders-in-swiftui-47c2ecdd1fb1)

## 📦 Features

- Demonstrates re-render behavior with `ObservableObject`
- Shows how to:
  - Use `@Binding` to isolate updates
  - Transition to the `Observation` framework (`@Observable`, `@Bindable`)
- Includes diagnostic logging using `_printChanges()`
