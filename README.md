# 🔍 Pinch & Zoom - SwiftUI Magazine Reader App

**Pinch** is an interactive iOS magazine viewer application built with **SwiftUI**. It demonstrates advanced touch gestures, dynamic scaling, image dragging, custom overlay controls, and a sliding thumbnail drawer.

---

## ✨ Key Features

- **Interactive Zoom & Pinch:** Supports tap-to-zoom and fluid pinch-to-zoom gestures using `imageScale`.
- **Drag & Pan Navigation:** Seamless image dragging (`imageOffset`) with elastic boundaries and smooth spring animations (`resetImageState()`).
- **Interactive Control Panel:** Dynamic UI overlay with buttons to zoom in, zoom out, and reset scale (`ControllImageView`).
- **Real-Time Info Panel:** Floating telemetry HUD showing live scale and offset coordinates (`InfoPanelView`).
- **Sliding Drawer Navigation:** Expandable side drawer (`isDrawerOpen`) allowing users to browse and switch between different magazine pages (`PageData`).

---

## 🛠 Tech Stack

- **Language:** Swift 5+
- **UI Framework:** SwiftUI (`MagnificationGesture`, `DragGesture`, `TapGesture`)
- **Architecture:** Clean MVVM structure (`Data`, `Model`, `Screen`, `View`)
- **IDE:** Xcode
- **Minimum iOS Version:** iOS 16.0+

---

## 📁 Project Structure
Pinch/
├── Data/
│   └── PageData.swift
├── Model/
│   └── PageModel.swift
├── Screen/
│   └── ContentView.swift
├── View/
│   ├── ControllImageView.swift
│   └── InfoPanelView.swift
├── Assets.xcassets
└── PinchApp.swift
