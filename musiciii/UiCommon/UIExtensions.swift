//
//  UIExtensions.swift
//  musiciii
//
//  Created by Marvis Ighedosa on 22/01/2024.
//

import SwiftUI

enum Satoshi: String {
    case black = "Satoshi-Black"
    case bold = "Satoshi-Bold"
    case medium = "Satoshi-Medium"
    case regular = "Satoshi-Regular"
}

extension Font {
    static func customFont(_ font: Satoshi, fontSize: CGFloat) -> Font{
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    static var screenWidth:Double {
        return UIScreen.main.bounds.width
    }
    
    static var screenHeight:Double {
        return UIScreen.main.bounds.height
    }
    
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
        //375 * 0.5
    }
    
    static func heightPer(per: Double) -> Double {
        return screenHeight * per
        //375 * 0.5
    }
    
    static var topInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }
    
    static var bottomInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
    static var horizontalInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }
    
    static var verticalInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
}

extension View {
    func cornerRadius(_ radius:CGFloat, corner: UIRectCorner) -> some View {
    }
}

struct RoundedCorner:Shape {
    
}
