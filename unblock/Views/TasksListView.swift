import SwiftUI
import Foundation

struct TasksListView: View {
    @State private var isCreatingTask: Bool = false
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(tasksMock.indices, id: \.self) { index in
                    let task = tasksMock[index]
                    TaskItemView(task: task)
                }
                CreateNewTaskButtonView(isCreatingTask: $isCreatingTask)
            }
        }
        
    }
    struct TaskListView_Preview: PreviewProvider {
        static var previews: some View {
            TasksListView()
                .previewLayout(.sizeThatFits)
        }
    }
}
