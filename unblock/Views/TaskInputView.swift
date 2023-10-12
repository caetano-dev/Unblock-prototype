
import SwiftUI

struct TaskInputView: View {
    @Binding var taskName: String
    @Binding var taskDescription: String
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Task name", text: $taskName).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            TextField("Task description", text: $taskDescription).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            Spacer()
            Button("Close"){
                isPresented.toggle()
            }
        }.padding()
            
    }
}


struct TaskInputView_Previews: PreviewProvider {
    @State static var previewTaskName: String = "Sample Task Name"
    @State static var previewTaskDescription: String = "Sample Task description" 
    @State static var isPresented: Bool = true
        
    static var previews: some View {
        TaskInputView(taskName: $previewTaskName, taskDescription: $previewTaskDescription, isPresented: $isPresented)
    }
}
