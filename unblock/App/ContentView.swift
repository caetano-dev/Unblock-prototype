import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Spacer()
            NavigationView {
                ScrollView{
                    
                    VStack {
                        TasksListView()
                    }
                }
            }
        }.navigationTitle("Tasks")
    }
        
}

struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
