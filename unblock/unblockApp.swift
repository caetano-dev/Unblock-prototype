import SwiftUI

@main
struct unblockApp: App {
    @State private var taskName: String = "Task name"
    @State private var taskDescription: String = "Task description"
    @State private var isPresented: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    TaskListView(taskName: $taskName, taskDescription: $taskDescription)
                    Text("hello")
                    CreateTaskButtonView(taskName: $taskName, taskDescription: $taskDescription)
                .navigationTitle("Home")
                }
            }
        }
    }
}

