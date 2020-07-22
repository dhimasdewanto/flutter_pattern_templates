# flutter_pattern_templates

Collection of best pattern and architecture for Flutter.

---

- [Add Secret Keys](#add-secret-keys)
- [VSCode Better Shortcuts](#vscode-better-shortcuts)
- [VSCode Launch Configuration](#vscode-launch-configuration)
- [Release Android App](#release-android-app)

### Add Secret Keys

---

1. Create `configs` folder in root folder (if doesnt's exist)

2. Create `secrets.json`

3. Add this code as an example:

```json
{
    "app_key": "XXXXXX-XXXXXXX-XXXXXX",
    "news_api_key": "xxxxxxxxxxxxxxxxxxxxxxxxxx"
}
```

4. Don't forget to add your keys in `secret_reader.dart`

### VSCode Better Shortcuts

---

1. Install [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner)

2. Go to `File > Preferences > Keyboard Shortcuts`

3. Click Open Keyboard Shortcuts (top right button)

4. Add this code:

```json
[
    {
        "key": "ctrl+alt+g",
        "command": "command-runner.run",
        "args": {
            "command": "flutter pub run build_runner build --delete-conflicting-outputs"
        }
    },
    {
        "key": "ctrl+alt+h",
        "command": "command-runner.run",
        "args": {
            "command": "flutter pub run build_runner watch --delete-conflicting-outputs"
        }
    },
    {
        "key": "ctrl+alt+l",
        "command": "command-runner.run",
        "args": {
            "command": "flutter pub run easy_localization:generate -s translations -f keys -O lib/core/translations -o locale_keys.g.dart"
        }
    }
]
```

### VSCode Launch Configuration

---

1. Create `.vscode` folder in root folder, then create `launch.json`

2. Add this code:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter Dev Debug",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_dev.dart"
    },
    {
      "name": "Flutter Prod Debug",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_prod.dart"
    },
    {
      "name": "Flutter Dev Profile",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_dev.dart",
      "flutterMode": "profile"
    },
    {
      "name": "Flutter Prod Profile",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_prod.dart",
      "flutterMode": "profile"
    }
  ]
}
```

### Release Android App

---

1. Read [documentation](https://flutter.dev/docs/deployment/android)

2. Template of `key.properties`:

```properties
storePassword=<password from jks step>
keyPassword=<password from jks step>
keyAlias=key
storeFile=C:\\Users\\SOME_USER_NAME\\WHEREVER\\key.jks
```

3. Template of build apk command:

```
flutter build apk --split-per-abi --obfuscate --split-debug-info=/flutter_pattern_templates/v1.0.0 --target=lib/main_prod.dart
```