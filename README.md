# Lensfolio

A Flutter application for creative professionals to showcase their portfolio.

![Lensfolio Poster](images/lensfolio_poster.png)

## Project Overview

Lensfolio is a mobile application built with Flutter that allows creative professionals, such as photographers and designers, to create and manage their portfolios. It provides a platform to showcase their work, skills, and experience. The application includes features like a user profile, a section for job opportunities, and a clean, modern user interface.

## Folder Structure

```
lib/
├── blocs/                # All Cubits (state management)
│   ├── user/
│   │   ├── cubit.dart
│   │   └── state.dart
│   └── jobs/
│       ├── cubit.dart
│       └── state.dart
│
├── repos/                # All Repositories (data layer)
│   ├── user/
│   │   ├── user_repo.dart
│   │   ├── user_data_provider.dart
│   │   ├── user_mocks.dart
│   │   └── user_parser.dart
│   └── jobs/
│       └── ...
│
├── models/               # All Data Models
│   ├── user/
│   │   ├── user_data.dart
│   │   ├── user_data.freezed.dart
│   │   └── user_data.g.dart
│   └── job/
│       └── ...
│
├── ui/                   # All UI (screens and widgets)
│   ├── screens/
│   │   ├── splash/
│   │   │   ├── splash.dart
│   │   │   └── _state.dart
│   │   ├── login/
│   │   │   ├── login.dart
│   │   │   ├── _state.dart
│   │   │   └── widgets/
│   │   │       └── ...
│   │   └── home/
│   │       └── ...
│   └── widgets/          # Shared widgets across the app
│       ├── buttons/
│       ├── cards/
│       └── ...
│
├── services/             # App-wide services (Singleton pattern)
│   ├── app_log.dart
│   ├── fault/
│   ├── firebase/
│   ├── flavor/
│   └── route_logger/
│
├── configs/              # Configuration files
│   ├── theme/
│   ├── extension/
│   ├── bloc/
│   ├── space/
│   └── ui/
│
├── providers/            # Global providers
│   └── app.dart
│
├── router/               # Navigation
│   ├── router.dart
│   └── routes.dart
│
├── helpers/              # Helper functions and utilities
│
└── main.dart
```