# State Management Samples

This repository contains a collection of Flutter projects demonstrating different state management libraries. The goal is to provide clear, side-by-side examples of how to implement standard patterns using popular community packages.

## Structure

The project is organized as a monorepo with three main modules, each representing a standalone Flutter application dedicated to a specific state management library:

-   **`bloc/`**: Examples using the [flutter_bloc](https://pub.dev/packages/flutter_bloc) package.
-   **`mobx/`**: Examples using the [mobx](https://pub.dev/packages/mobx) and [flutter_mobx](https://pub.dev/packages/flutter_mobx) packages.
-   **`riverpod/`**: Examples using the [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) package.

### Complexity Levels

Within each module, you will find two implementations of a **Counter Application**:

*   **`simple/`**
    *   **Goal**: Demonstrate the bare minimum required to get the state management working.
    *   **UseCase**: A basic Counter app using primitive state (e.g., `int`) and minimal boilerplate. Ideal for understanding the core syntax.

*   **`advanced/`**
    *   **Goal**: Demonstrate a more production-ready architecture.
    *   **UseCase**: A Counter app that uses a structured State Model (e.g., `CounterModel` class) and View Models. This illustrates how to handle more complex state objects and separation of concerns.

## Getting Started

This project is configured with VS Code launch settings to make running any example easy.

### Prerequisites

*   [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
*   VS Code with the Flutter extension.

### Running the Apps

1.  Open the `Run and Debug` sidebar in VS Code.
2.  Select one of the pre-configured launch targets:
    *   `Bloc Simple App` / `Bloc Advanced App`
    *   `MobX Simple App` / `MobX Advanced App`
    *   `Riverpod Simple App` / `Riverpod Advanced App`
3.  Press **F5** (or click the Play button) to run the selected app on Chrome (or your preferred device).

## Dependencies

Check the `pubspec.yaml` in each respective folder (`bloc/`, `mobx/`, `riverpod/`) for the specific versions of the libraries used.
