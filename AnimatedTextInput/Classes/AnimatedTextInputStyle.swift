import UIKit

public protocol AnimatedTextInputStyle {
    var activeColor: UIColor { get }
    var placeholderInactiveColor: UIColor { get }
    var inactiveColor: UIColor { get }
    var lineInactiveColor: UIColor { get }
    var lineActiveColor: UIColor { get }
    var lineHeight: CGFloat { get }
    var errorColor: UIColor { get }
    var textInputFont: UIFont { get }
    var textInputFontColor: UIColor { get }
    var placeholderMinFontSize: CGFloat { get }
    var counterLabelFont: UIFont? { get }
    var leftMargin: CGFloat { get }
    var topMargin: CGFloat { get }
    var rightMargin: CGFloat { get }
    var bottomMargin: CGFloat { get }
    var yHintPositionOffset: CGFloat { get }
}

public struct AnimatedTextInputStyleBlue: AnimatedTextInputStyle {
    private static let customBlue = UIColor(red: 51.0/255.0, green: 175.0/255.0, blue: 236.0/255.0, alpha: 1.0)
    public let activeColor = AnimatedTextInputStyleBlue.customBlue
    public let placeholderInactiveColor = UIColor.gray.withAlphaComponent(0.5)
    public let inactiveColor = UIColor.gray.withAlphaComponent(0.5)
    public let lineInactiveColor = UIColor.gray.withAlphaComponent(0.2)
    public let lineActiveColor = AnimatedTextInputStyleBlue.customBlue.withAlphaComponent(0.5)
    public let lineHeight: CGFloat = 1.0 / UIScreen.main.scale
    public let errorColor = UIColor.red
    public let textInputFont = UIFont(name: "Roboto-Regular", size: 18)!
    public let textInputFontColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1)
    public let placeholderMinFontSize: CGFloat = 15.0
    public let counterLabelFont: UIFont? = UIFont(name: "Roboto-Regular", size: 10)!
    public let leftMargin: CGFloat = 5
    public let topMargin: CGFloat = 25
    public let rightMargin: CGFloat = 0
    public let bottomMargin: CGFloat = 10
    public let yHintPositionOffset: CGFloat = 5

    public init() { }
}
