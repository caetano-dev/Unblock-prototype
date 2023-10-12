import Foundation

struct TaskType: Identifiable {
    var id: Int
    var name: String
    var description: String
    var date: Date
    var durationInMinutes: Int
    var completed: Bool
    var createdAt: Date
    var isHabit: Bool
    var location: String?
    var attendees: [String]?
    var reminders: [Date]?
    var recurrence: String?
    var colorCategory: String?
    var notes: String?
    var priority: Int?
    var url: URL?
    var endDate: Date?
    var isAllDay: Bool
    var organizer: String?
    var status: String?
    var tags: [String]?
}
