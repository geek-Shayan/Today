//
//  Reminder+EKReminder.swift
//  Today
//
//  Created by MD. SHAYANUL HAQ SADI on 9/2/23.
//

import EventKit
import Foundation


extension Reminder {
    init(with ekReminder: EKReminder) throws {
        guard let dueDate = ekReminder.alarms?.first?.absoluteDate else {
            throw TodayError.reminderHasNoDueDate
        }
        id = ekReminder.calendarItemIdentifier
        title = ekReminder.title
        self.dueDate = dueDate
        notes = ekReminder.notes
        isComplete = ekReminder.isCompleted
    }
}
