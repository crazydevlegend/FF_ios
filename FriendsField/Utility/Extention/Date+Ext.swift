//
//  Date+Ext.swift
//  GST
//
//  Created by user1 on 01/02/22.
//

import Foundation

extension Date {
    
    func currentTimeMillis() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }

    func string(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    static func dates(from fromDate: Date, to toDate: Date) -> [Date] {
        var dates: [Date] = []
        var date = fromDate
        
        while date <= toDate {
            dates.append(date)
            guard let newDate = Calendar.current.date(byAdding: .day, value: 1, to: date) else { break }
            date = newDate
        }
        return dates
    }

    func startOfMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))!
    }
    
    func endOfMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
    }
    
    func years(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.year], from: date, to: self).year
    }
    
    func semiAnnual(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.month], from: Calendar.current.date(byAdding: .month, value: 6, to: date) ?? Date(), to: self).month
    }
    
    func quarterly(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.quarter], from: date, to: self).quarter
    }
    
    func months(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.month], from: date, to: self).month
    }
    
    func biweeks(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.weekday], from: Calendar.current.date(byAdding: .weekday, value: 2, to: date) ?? Date(), to: self).weekday
    }

    func weeks(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.weekday], from: date, to: self).weekday
    }

    func days(from date: Date) -> Int? {
        return Calendar.current.dateComponents([.day], from: date, to: self).day
    }
}


