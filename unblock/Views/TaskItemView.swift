import SwiftUI

struct TaskItemView: View {
    var task: TaskType

    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Button(action: {
                    
                }) {
                    Image(systemName: task.completed ? "checkmark.square.fill" : "square")
                        .foregroundColor(task.completed ? .green : .black).scaleEffect(1.5).padding()
                    Text(task.name)
                        .font(.title2)
                }
                Spacer()
            }
                VStack(alignment: .leading) {
                    Text(task.description)
                        .foregroundColor(.gray)
                    
                    HStack{
                        
                        Image(systemName: "stopwatch")
                        Text("\(task.durationInMinutes) minutes")
                        
                        Image(systemName: "location")
                            .foregroundColor(.blue)
                        Text("\(task.location ?? "N/A")")
                            .foregroundColor(.blue)
                    }
                }.padding(.horizontal, 65)
        }
    }
}

struct TaskItemView_Preview: PreviewProvider {
    @State static var task = TaskType(id: 1, name: "Take the trash out", description: "When it is time", date: Date(), durationInMinutes: 30, completed: false, createdAt: Date(), isHabit: false, location: "Kitchen", isAllDay: false)

    static var previews: some View {
        TaskItemView(task: task)
            .previewLayout(.sizeThatFits)
    }
}
