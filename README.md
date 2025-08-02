# SkeletonUI

<details open>
<summary>🇺🇸 English</summary>

A customizable and lightweight skeleton view library for SwiftUI.  
Perfect for shimmer, pulse, and text placeholder animations during loading states.

### Features

- Shimmer, Pulse, and TextShimmer support
- Custom layouts using nested VStack / HStack
- SwiftUI ViewModifier-based API
- Configurable animation settings
- Easy integration via `SkeletonController`

### Installation

Use Swift Package Manager:

```swift
.package(url: "https://github.com/yohns-dev/SkeletonUI.git", from: "0.1.0")
```
Or in Xcode:

| File -> Add Package -> Paste Git URL

### API Overview

- `SkeletonController(animation:)`: Controls and manages skeleton animation state
- `targetSkeleton(...)`: ViewModifier for marking views as skeleton targets
- `customSkeleton(...)`: Renders custom skeleton layouts using skeleton items
- `skeletonAnimation(controller:)`: Binds the animation controller to a view hierarchy
- `skeletonAnimationConfig(...)`: Configures animation properties (duration, delay, etc.)

### Usage

#### 1. Basic Usage
```Swift
let controller = SkeletonController(animation: .shimmer)

VStack {
    Text("Hello")
        .targetSkeleton()
}
.skeletonAnimation(controller: controller)
```

#### 2. With Configuration (via modifier)
```Swift
let controller = SkeletonController(animation: .pulse)

VStack {
    Text("Loading...")
        .targetSkeleton()
}
.skeletonAnimation(controller: controller)
.skeletonAnimationConfig(
    duration: 2.0,
    delay: 0.2,
    autoreverses: false
)
```

#### 3. With Configuration (via constructor)
```Swift
let config = SkeletonAnimationConfig(
    duration: 1.2,
    delay: 0.1,
    autoreverses: true
)

let controller = SkeletonController(
    animation: .shimmer,
    baseColor: .gray.opacity(0.3),
    highlightColor: .white.opacity(0.5),
)

VStack {
    Text("Loading...")
        .targetSkeleton()
}
.skeletonAnimationConfig(config)
.skeletonAnimation(controller: controller)
```

#### 4. Custom Layout Using Skeleton Items
```Swift
let controller = SkeletonController(animation: .shimmer)

VStack {
    Color.clear
        .customSkeleton(
            controller: controller,
            place: [
                .rectangle(widthRatio: 0.6, height: 14, cornerRadius: 8),
                .spacer(height: 10),
                .circle(size: 40),
                .spacer(height: 10),
                .rectangle(widthRatio: 0.8, height: 16, cornerRadius: 6)
            ],
            stack: .vStack(spacing: 12, alignment: .leading)
        )
}
```
</details>

<details>
<summary>🇰🇷 한국어</summary>

SwiftUI용 경량화된 스켈레톤 뷰 라이브러리입니다.
로딩 상태에서 사용할 수 있는 쉬머, 펄스, 텍스트 애니메이션을 제공합니다

### 주요 기능

- 쉬머(Shimmer), 펄스(Pulse), 텍스트 쉬머(TextShimmer) 애니메이션 지원
- VStack, HStack 등 중첩 레이아웃 구성 가능
- SwiftUI의 ViewModifier 기반 확장 방식
- 애니메이션 시간/지연/반복 설정 가능
- 'SkeletonController'를 통한 외부 제어

### 설치 방법

Swift Package Manager 사용 방법
```Swift
.package(url: "https://github.com/yohns-dev/SkeletonUI.git", from: "0.1.0")
```

Xcode에서 설치 방법

| File -> Add Package -> URL 붙여넣기

### API 개요

- `SkeletonController(animation:)`: 스켈레톤 제어 객체
- `targetSkeleton(...)`: ViewModifier로 타겟 UI 지정
- `customSkeleton(...)`: 커스텀 뷰 구성
- `skeletonAnimation(controller:)`: 애니메이션 상태 연결
- `skeletonAnimationConfig(...)`: 애니메이션 커스터마이징

### 사용 예시

#### 1. 기본 사용방법
```Swift
let controller = SkeletonController(animation: .shimmer)

VStack {
    Text("Hello")
        .targetSkeleton()
}
.skeletonAnimation(controller: controller)
```

#### 2. 모디파이어를 이용한 Configuration 적용 방법
```Swift
let controller = SkeletonController(animation: .pulse)

VStack {
    Text("Loading...")
        .targetSkeleton()
}
.skeletonAnimation(controller: controller)
.skeletonAnimationConfig(
    duration: 2.0,
    delay: 0.2,
    autoreverses: false
)
```

#### 3. 컨트롤러 생성 시 Configuration 적용 방법
```Swift
let config = SkeletonAnimationConfig(
    duration: 1.2,
    delay: 0.1,
    autoreverses: true
)

let controller = SkeletonController(
    animation: .shimmer,
    baseColor: .gray.opacity(0.3),
    highlightColor: .white.opacity(0.5),
)

VStack {
    Text("Loading...")
        .targetSkeleton()
}
.skeletonAnimationConfig(config)
.skeletonAnimation(controller: controller)
```

#### 4. SkeletonItem을 활용한 커스텀 레이아웃 구성
```Swift
let controller = SkeletonController(animation: .shimmer)

VStack {
    Color.clear
        .customSkeleton(
            controller: controller,
            place: [
                .rectangle(widthRatio: 0.6, height: 14, cornerRadius: 8),
                .spacer(height: 10),
                .circle(size: 40),
                .spacer(height: 10),
                .rectangle(widthRatio: 0.8, height: 16, cornerRadius: 6)
            ],
            stack: .vStack(spacing: 12, alignment: .leading)
        )
}
```
</details>

### Preview
## Coming Soon...

