# First Time Screen

* Displays an intro screen if app has been opened for the first time

## Usage

* Add the dependency to your pubspec.yaml.
```yaml
    dependencies:
        flutter:
            sdk: flutter
        first_time_screen:
```

* How to use
```dart
    FirstTimeScreen(
        loadingScreen: Text("Loading"),
        introScreen: MaterialPageRoute(builder: (context) => Intro()),
        landingScreen: MaterialPageRoute(builder: (context) => Home()),
    )

```
