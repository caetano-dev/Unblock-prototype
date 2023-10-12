import SwiftUI

struct HomeView: View {
    @Binding var taskName: String
    @Binding var taskDescription: String
    @State private var isCreatingTask = false

    var body: some View {
        NavigationView {
            ZStack {
                TaskListView()
                
                VStack {
                    Spacer()
                    CreateTaskButtonView(taskName: $taskName, taskDescription: $taskDescription)
                    BottomMenu(isCreatingTask: $isCreatingTask, taskName: $taskName, taskDescription: $taskDescription)
                    
                }
            }
            .navigationBarTitle("Home")
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    @State static var previewTaskName: String = "Sample Task Name"
    @State static var previewTaskDescription: String = "Sample Task description" 
    
    static var previews: some View {
        HomeView(taskName: $previewTaskName, taskDescription: $previewTaskDescription)
    }
}
