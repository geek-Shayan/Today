//
//  ReminderListStyle.swift
//  Today
//
//  Created by MD. SHAYANUL HAQ SADI on 7/2/23.
//

import Foundation

enum ReminderListStyle: Int {
    case past
    case today
    case future
    case all
    
    var name: String {
        switch self {
            case .past:
                return NSLocalizedString("Past", comment: "Past style name")
            case .today:
                return NSLocalizedString("Today", comment: "Today style name")
            case .future:
                return NSLocalizedString("Future", comment: "Future style name")
            case .all:
                return NSLocalizedString("All", comment: "All style name")
        }
    }
    
    func shouldInclude(date: Date) -> Bool {
        let isInToday = Locale.current.calendar.isDateInToday(date)
        switch self {
            case .past:
                return (date < Date.now) && !isInToday
            case .today:
                return isInToday
            case .future:
                return (date > Date.now) && !isInToday
            case .all:
                return true
        }
    }
}
