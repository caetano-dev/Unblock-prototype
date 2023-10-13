import Foundation

var tasksMock: [TaskType] = [
    TaskType(id: 1, name: "Meeting with Team", description: "Discuss project updates", startDate: Date(), endDate: Date().addingTimeInterval(3600), durationInMinutes: 60, completed: false, createdAt: Date(), isHabit: false, location: "Conference Room A", attendees: ["John", "Jane"], reminders: [Date().addingTimeInterval(-3600)], recurrence: "Weekly", colorCategory: "Work", notes: "Prepare presentation in advance", priority: 2, url: URL(string: "https://example.com/meeting"), isAllDay: false, organizer: "John", status: "Confirmed", tags: ["Project", "Meeting"]),
    
    TaskType(id: 2, name: "Gym Workout", description: "Chest and arms", startDate: Date(), endDate: Date().addingTimeInterval(5400), durationInMinutes: 90, completed: false, createdAt: Date(), isHabit: true, location: "Local Gym", attendees: nil, reminders: [Date().addingTimeInterval(-7200)], recurrence: "Daily", colorCategory: "Health", notes: "Don't forget to hydrate", priority: 1, url: nil, isAllDay: false, organizer: "Self", status: "Confirmed", tags: ["Exercise"]),
    
    TaskType(id: 3, name: "Birthday Party", description: "Celebrate Sarah's birthday", startDate: Date(), endDate: Date().addingTimeInterval(7200), durationInMinutes: 180, completed: false, createdAt: Date(), isHabit: false, location: "Sarah's Place", attendees: ["Sarah", "Mike", "Lisa"], reminders: [Date().addingTimeInterval(-86400)], recurrence: "Yearly", colorCategory: "Social", notes: "Bring a gift", priority: 3, url: nil, isAllDay: false, organizer: "Sarah", status: "Tentative", tags: ["Party"]),
]

