import SwiftUI

struct TasksListView: View {
    var body: some View {
        LazyVStack{
            ForEach(tasksMock){task in TaskItemView(task:task)}
        }
    }
    
}
struct TaskListView_Preview: PreviewProvider {
        static var previews: some View {
            TasksListView()
                .previewLayout(.sizeThatFits)
        }
    }
