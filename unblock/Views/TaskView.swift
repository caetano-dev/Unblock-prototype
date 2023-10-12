import SwiftUI

struct TaskView: View {
    var taskName: String
    var taskDescription: String
    @State private var isCompleted = false

    var body: some View {
        HStack {
            Toggle("", isOn: $isCompleted)
                .labelsHidden()
                .toggleStyle(CheckboxToggleStyle())

            VStack(alignment: .leading) {
                Text(taskName)
                    .font(.headline)
                Text(taskDescription)
                    .font(.subheadline)
            }
        }
        .cornerRadius(10.0)
        
    }
}

