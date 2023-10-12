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
                    HomeView(taskName: $taskName, taskDescription: $taskDescription)
                }
                
            }
        }
    }
}
@available(iOS 15.0, *)
struct unblockApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(taskName: .constant("Sample Task"), taskDescription: .constant("Task description"))
    }
}
