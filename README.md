<div align="center">

# 🔔 Notifications SwiftUI

**A minimal SwiftUI example for scheduling local notifications with `UNUserNotificationCenter`.**

![Platform](https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift)
![Xcode](https://img.shields.io/badge/Xcode-16+-147EFB?style=flat-square&logo=xcode)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/NotificationsSwiftUI?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/NotificationsSwiftUI?style=flat-square&color=4776E6)

</div>

## 📖 Overview

Notifications SwiftUI is a compact iOS sample project that demonstrates how to request notification permission and schedule a local notification in SwiftUI. Tapping a single button asks the user for authorization and, once granted, delivers a time-interval notification a few seconds later. If permission is denied, the app surfaces an alert directing the user to enable notification access in Settings.

The project keeps its concerns cleanly separated: an `enum`-based configuration holds all notification content and strings, an `ObservableObject` view model handles the scheduling logic, and the view stays focused on presentation.

## ✨ Features

- 🔐 Requests notification authorization for alerts, sound, and badge via `UNUserNotificationCenter`.
- ⏱️ Schedules a local notification using a `UNTimeIntervalNotificationTrigger` (fires after 5 seconds).
- 🚫 Shows a SwiftUI `alert` prompting the user to enable notifications when permission is denied.
- 🧩 Centralizes all notification content and UI strings in a single `Notifications` enum for easy configuration.
- 🎨 Uses a reusable `View` extension for consistent button styling.

## 📸 Preview

<div align="center">

<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 17 Pro - 2025-12-03 at 22 41 58" src="https://github.com/user-attachments/assets/76cc3d32-58f4-46eb-8ee6-9a8030c33619" />
<img width="1313" height="790" alt="Screenshot 2025-12-03 at 22 42 27" src="https://github.com/user-attachments/assets/044385a6-927f-4890-a9b2-4d6461030b4b" />
<img width="1001" height="517" alt="Screenshot 2025-12-03 at 22 42 41" src="https://github.com/user-attachments/assets/069483fc-92be-4948-a60a-ea930910b58c" />

</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/NotificationsSwiftUI.git
cd NotificationsSwiftUI
open NotificationsSwiftUI.xcodeproj
```

Then select a simulator or device and press `Command-R` to build and run. Tap **Send Notifications**, grant permission when prompted, and the notification will arrive a few seconds later.

## 📋 Requirements

- iOS 26.1 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
