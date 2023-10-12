import SwiftUI

struct CreateTaskView: View {
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            TaskInputView()
            Text("Create a new task")
            Button("Close") {
                isPresented.toggle()
            }
        }
        .padding()
        .background(Color.white)
    }
}
