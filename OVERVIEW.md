# ThriveApp Overview

ThriveApp is an iOS app, built with SwiftUI, designed to support children on the autism spectrum ("Thriving on the Spectrum") along with their parents/caregivers. It uses Firebase (Auth, Firestore, Database, Analytics) as its backend.

## Key Features

- **Authentication** — Sign up / sign in via Firebase Auth (`SignInView.swift`, `SignUpView.swift`).
- **Child Profile** — A hub screen (`ChildProfileView.swift`) linking to the app's main tools.
- **Parent Communication Portal** — A messaging/post feed between parents and caregivers, backed by Firestore (`ParentCommunicationPortal.swift`, `Post.swift`, `PostView.swift`).
- **Schedule / Calendar** — A calendar-based daily schedule for planning and tracking activities and tasks (`ScheduleCal.swift`, `ScheduleDayView.swift`, `ScheduleDayAddActivity.swift`, `ScheduleDayEditActivity.swift`, `Event.swift`, plus a custom `RK*` calendar component set: `RKManager`, `RKMonth`, `RKCell`, `RKDate`, `RKWeekdayHeader`, `RKViewController`, `RKColorSettings`).
- **Task List** — View and manage daily tasks tied to scheduled events, with the ability to reset/reload task state from Firestore (`TaskListView.swift`).
- **Reward Bank** — A token-based reward system to track and reinforce positive behavior, stored per user in Firestore (`RewardBankView.swift`).
- **Toolbox** — A library of self-regulation tools/strategies that a child can access, with detail views (`ToolboxView.swift`, `ToolboxAdd.swift`, `ToolDetailView.swift`).

## Tech Stack

- **UI**: SwiftUI
- **Backend**: Firebase (Authentication, Firestore, Realtime Database, Analytics)
- **Dependency management**: CocoaPods (see `Podfile`)
- **Platform**: iOS (Xcode project/workspace)

## Project Structure

- `ThriveApp/ThriveApp/` — Main app source (views, models, Firebase config).
- `ThriveApp/ThriveAppTests/` — Unit tests.
- `ThriveApp/Pods/` — CocoaPods dependencies.
- `ThriveApp/ThriveApp.xcworkspace` — Open this (not the `.xcodeproj`) to build, since CocoaPods is used.
