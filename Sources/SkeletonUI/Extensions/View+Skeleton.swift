import SwiftUI

extension View {
    func targetSkeleton(widthRatio: CGFloat = 1.0, heightRatio: CGFloat = 1.0, alignment: SkeletonAlignmentType = .leading, shape: SkeletonShapeType = .rounded(8)) -> some View {
        self.modifier(TargetSkeletonModifier(widthRatio: widthRatio, heightRatio: heightRatio, alignment: alignment, shape: shape))
    }
    
    // MARK: Animation
    func skeletonAnimation(controller: SkeletonController) -> some View {
        self.modifier(SkeletonAnimationModifier(controller: controller))
    }
    
    // MARK: Config
    func skeletonAnimationConfig(_ config: SkeletonAnimationConfig) -> some View {
        environment(\.skeletonConfig, config)
    }
    
    func skeletonAnimationConfig(
        duration: Double = 1.5,
        delay: Double = 0.0,
        autoreverses: Bool = true
    ) -> some View {
        let config = SkeletonAnimationConfig(
            duration: duration,
            delay: delay,
            autoreverses: autoreverses
        )
        return self.skeletonAnimationConfig(config)
        
    }
    
    // MARK: Custom
    func customSkeleton(
        controller: SkeletonController,
        place: [SkeletonItem],
        stack: SkeletonStackType = .vStack(),
        baseseColor: Color = .gray,
        highlightColor: Color = .gray.opacity(0.3)
    ) -> some View {
        ZStack {
            self
                .opacity(controller.isAnimating ? 0 : 1)
            if controller.isAnimating {
                SkeletonCustomView(controller: controller, items: place, rootStack: stack, baseColor: baseseColor, highlightColor: highlightColor
                )
            }
        }
    }
}
