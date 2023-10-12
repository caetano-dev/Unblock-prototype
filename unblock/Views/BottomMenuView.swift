import SwiftUI

struct BottomMenu: View {
    @Binding var isCreatingTask: Bool
    @Binding var taskName: String
    @Binding var taskDescription: String

    var body: some View {
        HStack {
            Button(action:{}) {
                Text("Home").foregroundStyle(Color.black)
            }
            .sheet(isPresented: $isCreatingTask) {
                TaskInputView(taskName: $taskName, taskDescription: $taskDescription, isPresented: $isCreatingTask)
            }
            Button(action: {}) {
                Text("Plants").foregroundStyle(Color.black)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(8)
        .background(Color.green)
    }

}
