# Platform release gates

Pixel-perfect output is not required. Each platform gate verifies compilation,
startup, semantic input, persistence lifecycle, audio activation policy, and the
canonical example behavioral tests.

## Local evidence

Validated from macOS ARM64:

| Target | Result | Evidence |
|---|---|---|
| macOS release | Pass | `flutter build macos --release`; 42.1 MB `.app` |
| Android release | Pass | `flutter build apk --release`; 46.4 MB APK |
| Web release | Pass | `flutter build web --release`, including WASM dry run |
| iOS release | Blocked | Xcode has no iOS 26.5 platform component installed |
| Linux release | External | Requires a Linux runner |
| Windows release | External | Requires a Windows runner |

The package and example behavioral suites pass locally. Package line coverage is
80.25%, above the required 70%.

## Required external evidence

`.github/workflows/check.yml` defines Linux, Windows, macOS, Android, iOS, and web
build jobs. Task 343 must remain open until that workflow is run on real named
runners and artifacts are retained. This checkout currently has no Git remote,
and the GitHub CLI is not installed, so the workflow cannot be dispatched from
this environment.

Do not substitute cross-compilation or the existence of workflow YAML for real
Windows/Linux execution evidence.
