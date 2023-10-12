//
//  TaskListView.swift
//  unblock
//
//  Created by Pedro Caetano on 11/10/23.
//

import SwiftUI


struct TaskListView: View {
    @State private var taskName: String = "Task name"
    @State private var taskDescription: String = "Task description"
    
    var body: some View {
        List {
            ForEach(0..<3, id: \.self) { _ in
                TaskView(taskName: taskName, taskDescription: taskDescription)
            }
        }
    }
}

#Preview {
    TaskListView()
}
