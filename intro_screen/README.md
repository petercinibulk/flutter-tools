# Intro Screen

* Displays an intro screen if app has been opened for the first time

## Usage

* Add the dependency to your pubspec.yaml.
```yaml
    dependencies:
        flutter:
            sdk: flutter
        intro_screen:
```

* How to use
```dart
    intro_screen(
        loadingScreen: Text("Loading"),
        introScreen: MaterialPageRoute(builder: (context) => Intro()),
        landingScreen: MaterialPageRoute(builder: (context) => Home()),
    )

```
