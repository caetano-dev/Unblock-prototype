import SwiftUI
import EventKit

struct CreateTaskView: View {
    @Binding var task: TaskType
    @Binding var isCreatingTask: Bool

    // Create an initializer with default values for bindings
    init(task: Binding<TaskType> = .constant(TaskType(id: 0, name: "", description: "", startDate: Date(), endDate: Date(), durationInMinutes: 0, completed: false, createdAt: Date(), isHabit: false, location: "", attendees: [], reminders: [], recurrence: "", colorCategory: "", notes: "", priority: 0, url: nil, isAllDay: false, organizer: "", status: "", tags: [])), isCreatingTask: Binding<Bool> = .constant(false)) {
        _task = task
        _isCreatingTask = isCreatingTask
    }

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
        CreateTaskView()
    }
}

