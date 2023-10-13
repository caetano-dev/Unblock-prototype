import SwiftUI
import EventKit

struct ContentView: View {
    var body: some View {
        TabView {
            TasksListView()
                .tabItem { Label("Tasks", systemImage: "checkmark.square") }
            GardenView()
                .tabItem{
                    Label("Garden", systemImage: "tree")
                }
            
        }.navigationTitle("Tasks")
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
