# LaunchPractice

## 概要
UIKitおよび、SwiftUIベースで作成したiOSアプリプロジェクトのそれぞれについて、
AppDelegate、SceneDelegate有無におけるデリゲートメソッドの実行順序を調査した。

対象OS: iOS16

## 調査対象の起動方法
未起動状態および、起動済みバックグラウンド状態のアプリについて、
それぞれ以下の手段でアプリを起動し、デリゲートメソッドの実行順序を調査した。
- アプリアイコンタップ
- PUSH通知
- Spotlight検索
- Quick Action
- Widget

## UIKitベース

## AppDelegate + UIViewController: LaunchOnUIKit1
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:performActionFor:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
application(_:performActionFor:)
applicationDidBecomeActive(_:)
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:willContinueUserActivityWithType:)
application(_:continue:restorationHandler:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
application(_:willContinueUserActivityWithType:)
application(_:continue:restorationHandler:)
applicationDidBecomeActive(_:)
```
---
## AppDelegate + SceneDelegate + UIViewController: LaunchOnUIKit2
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
windowScene(_:didUpdate:interfaceOrientation:traitCollection:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
scene(_:restoreInteractionStateWith:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
scene(_:willContinueUserActivityWithType:)
sceneWillEnterForeground(_:)
scene(_:continue:)
sceneDidBecomeActive(_:)
```
## AppDelegate + SceneDelegate + SwiftUI(UIHostingController): LaunchOnUIKit3
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
scene(_:willContinueUserActivityWithType:)
sceneWillEnterForeground(_:)
scene(_:continue:)
sceneDidBecomeActive(_:)
```

## AppDelegate + SceneDelegate + ScenePhase + SwiftUI(UIHostingController): LaunchOnUIKit4
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
```
#### バックグラウンド
```
scene(_:willContinueUserActivityWithType:)
sceneWillEnterForeground(_:)
scene(_:continue:)
sceneDidBecomeActive(_:)
```

## AppDelegate + ScenePhase + SwiftUI(UIHostingController): LaunchOnUIKit5
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
applicationDidBecomeActive(_:)
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:performActionFor:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
application(_:performActionFor:)
applicationDidBecomeActive(_:)
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:willContinueUserActivityWithType:)
application(_:continue:restorationHandler:)
applicationDidBecomeActive(_:)
```
#### バックグラウンド
```
applicationWillEnterForeground(_:)
application(_:willContinueUserActivityWithType:)
application(_:continue:restorationHandler:)
applicationDidBecomeActive(_:)
```

## SwiftUIベース
## ScenePhase: LaunchOnSwiftUI1
### アプリアイコン
#### 未起動
```
active
```
#### バックグラウンド
```
inactive
active
```
### PUSH通知
#### 未起動
```
active
```
#### バックグラウンド
```
inactive
active
```
### Spotlight検索
#### 未起動
```
active
```
#### バックグラウンド
```
inactive
active
```
### Quick Action
#### 未起動
```
active
```
#### バックグラウンド
```
inactive
active
```
### Widget
#### 未起動
```
active
```
#### バックグラウンド
```
inactive
active
```
## AppDelegate + ScenePhase: LaunchOnSwiftUI2
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
active
```
#### バックグラウンド
```
inactive
active
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
active
```
#### バックグラウンド
```
inactive
active
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
active
```
#### バックグラウンド
```
inactive
active
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
active
```
#### バックグラウンド
```
inactive
active
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
active
```
#### バックグラウンド
```
inactive
active
```
## AppDelegate + SceneDelegate + ScenePhase: LaunchOnSwiftUI3
### アプリアイコン
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
active
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
inactive
sceneDidBecomeActive(_:)
active
```
### PUSH通知
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
active
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
inactive
sceneDidBecomeActive(_:)
active
```
### Spotlight検索
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
active
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
inactive
sceneDidBecomeActive(_:)
active
```
### Quick Action
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
active
```
#### バックグラウンド
```
sceneWillEnterForeground(_:)
inactive
sceneDidBecomeActive(_:)
active
```
### Widget
#### 未起動
```
application(_:didFinishLaunchingWithOptions:)
application(_:configurationForConnecting:options:)
scene(_:willConnectTo:options:)
sceneWillEnterForeground(_:)
sceneDidBecomeActive(_:)
active
```
#### バックグラウンド
```
scene(_:willContinueUserActivityWithType:)
sceneWillEnterForeground(_:)
inactive
scene(_:continue:)
sceneDidBecomeActive(_:)
active
```


