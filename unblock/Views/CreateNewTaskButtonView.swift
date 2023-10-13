
import SwiftUI

struct CreateNewTaskButtonView: View {
    @Binding var isCreatingTask: Bool
    
    var body: some View {
        Button(action: {isCreatingTask.toggle()}) {
                Text("Create new task")
            }
            .sheet(isPresented: $isCreatingTask) {
//                if grantedAccess {
                    CreateTaskView()
//                } else {
 //                   Text("Permission to access the calendar was denied.")
//                }
            }
    }
}

struct CreateNewTaskButtonView_Previews: PreviewProvider{
    @State static private var isCreatingTask = false
    static var previews: some View{
        
    CreateNewTaskButtonView(isCreatingTask: $isCreatingTask)
    }
}
