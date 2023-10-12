import SwiftUI
import EventKit

struct CreateTaskView: View {
    @Binding var task: TaskType
    @Binding var isCreatingTask: Bool

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $task.name)
                    DatePicker("Start Date", selection: $task.startDate, displayedComponents: .date)
                    DatePicker("End Date", selection: $task.endDate, displayedComponents: .date)
                }

                Section {
                    Button("Add to calendar") {
                        createCalendarEvent(for: task) { success, error in
                            if success {
                                print("Calendar event created successfully.")
                            } else if let error = error {
                                print("Error creating calendar event: \(error.localizedDescription)")
                            } else {
                                print("Access to the calendar was not granted.")
                            }
                            isCreatingTask = false
                        }
                    }
                }
            }
            .navigationTitle("New Task")
        }
    }
}

struct CreateTaskView_Preview: PreviewProvider {
    static var previews: some View {
        CreateTaskView(
            task: .constant(TaskType(id: 1, name: "", description: "", startDate: Date(), endDate: Date(), durationInMinutes: 60, completed: false, createdAt: Date(), isHabit: false, location: nil, attendees: nil, reminders: nil, recurrence: nil, colorCategory: nil, notes: nil, priority: nil, url: nil, isAllDay: false, organizer: nil, status: nil, tags: nil)),
            isCreatingTask: .constant(true)
        )
    }
}
