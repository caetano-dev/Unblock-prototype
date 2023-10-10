import SwiftUI

struct TaskListView: View {
    @Binding var taskName: String
    @Binding var taskDescription: String
    
    var body: some View {
        VStack {
            List {
                ForEach(0..<10, id: \.self) { _ in
                TaskView(taskName: taskName, taskDescription: taskDescription)
              }
            }
        }.navigationTitle("Tasks")
            .listStyle(InsetListStyle())
    }
}


struct TaskListView_Previews: PreviewProvider {
    @State static var previewTaskName: String = "Sample Task Name"
    @State static var previewTaskDescription: String = "Sample Task description" 
        
    static var previews: some View {
        TaskListView(taskName: $previewTaskName, taskDescription: $previewTaskDescription)
    }
}
