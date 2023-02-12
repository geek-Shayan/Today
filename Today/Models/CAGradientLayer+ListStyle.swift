//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by MD. SHAYANUL HAQ SADI on 8/2/23.
//

import UIKit


extension CAGradientLayer {
    static func gradientLayer(for style: ReminderListStyle, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer
    }
    
    private static func colors(for style: ReminderListStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor
        
        switch style {
            case .all:
                beginColor = .todayGradientAllBegin
                endColor = .todayGradientAllEnd
//                beginColor = .systemYellow
//                endColor = .systemBlue
            case .future:
                beginColor = .todayGradientFutureBegin
                endColor = .todayGradientFutureEnd
//                beginColor = .systemGreen
//                endColor = .systemBlue
            case .today:
                beginColor = .todayGradientTodayBegin
                endColor = .todayGradientTodayEnd
//                beginColor = .systemRed
//                endColor = .systemBlue
            case .past:
//                beginColor = .todayGradientTodayBegin
//                endColor = .todayGradientTodayEnd
                beginColor = .systemRed
                endColor = .systemBlue
        }
        return [beginColor.cgColor, endColor.cgColor]
    }
    
}
