import SwiftUI
import EventKit

struct ContentView: View {
    @State private var isCreatingTask = false
    @State private var newTask = TaskType(id: 1, name: "", description: "", startDate: Date(), endDate: Date(), durationInMinutes: 60, completed: false, createdAt: Date(), isHabit: false, location: nil, attendees: nil, reminders: nil, recurrence: nil, colorCategory: nil, notes: nil, priority: nil, url: nil, isAllDay: false, organizer: nil, status: nil, tags: nil)
    
    var body: some View {
        VStack {
            Spacer()
            NavigationView {
                ScrollView {
                    VStack {
                        TasksListView()
                    }
                }
            }
            Button(action: {
                requestCalendarAccess { granted in
                    if granted {
                        isCreatingTask = true
                    }
                }
            }) {
                Text("Create new task")
            }
            .sheet(isPresented: $isCreatingTask) {
                if grantedAccess {
                    CreateTaskView(task: $newTask, isCreatingTask: $isCreatingTask)
                } else {
                    Text("Permission to access the calendar was denied.")
                }
            }
        }
        .navigationTitle("Tasks")
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
