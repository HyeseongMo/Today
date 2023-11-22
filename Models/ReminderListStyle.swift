//
//  ReminderListStyle.swift
//  Today
//
//  Created by Paul Mo on 2023/11/22.
//

import Foundation

enum ReminderListStyle: Int {
    case today
    case future
    case all

    func shouldInclude(date: Date) -> Bool {
        let isInToday = Locale.current.calendar.isDateInToday(date)
        switch self {
        case .today:
            return isInToday
        case .future:
            return (date > Date.now) && !isInToday
        case .all:
            return true
        }
    }
}
