// Generated by Khrysalis Swift converter - this file will be overwritten.
// File: views/ViewGenerator.kt
// Package: com.lightningkite.butterfly.views
import UIKit
import Foundation

public protocol ViewGenerator {
    var titleString: String { get }
    func generate(dependency: ViewControllerAccess) -> UIView
    
}

public extension ViewGenerator {
    var titleString: String { return "" }
}

public class EmptyViewGenerator : ViewGenerator {
    public init() {}
    public func generate(dependency: ViewControllerAccess) -> UIView { return UIView(frame: .zero) }
}
