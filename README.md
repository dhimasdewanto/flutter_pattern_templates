# flutter_pattern_templates

Collection of best pattern and architecture for Flutter.

---

- [VSCode Better Shortcuts](#vscode-better-shortcuts)
- [VSCode Launch Configuration](#vscode-launch-configuration)

### VSCode Better Shortcuts

---

1. Install [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner)

2. Go to File > Preferences > Keyboard Shortcuts

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