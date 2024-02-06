import SwiftUI

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
public struct HFlowLayout {
    private let layout: FlowLayout

    public init(
        alignment: VerticalAlignment,
        itemSpacing: CGFloat?,
        rowSpacing: CGFloat?,
        centerRowsHorizontally: Bool
    ) {
      layout = .horizontal(
        alignment: alignment,
        itemSpacing: itemSpacing,
        lineSpacing: rowSpacing,
        centerRowsHorizontally: centerRowsHorizontally
      )
    }
}

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
extension HFlowLayout: Layout {
    public func sizeThatFits(proposal: ProposedViewSize, subviews: LayoutSubviews, cache: inout ()) -> CGSize {
        layout.sizeThatFits(proposal: proposal, subviews: subviews, cache: &cache)
    }

    public func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: LayoutSubviews, cache: inout ()) {
        layout.placeSubviews(in: bounds, proposal: proposal, subviews: subviews, cache: &cache)
    }

    public static var layoutProperties: LayoutProperties {
        var properties = LayoutProperties()
        properties.stackOrientation = .horizontal
        return properties
    }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    public var layoutDirectionBehavior: LayoutDirectionBehavior {
        layout.layoutDirectionBehavior
    }
}
