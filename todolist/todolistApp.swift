//
//  todolistApp.swift
//  todolist
//
//  Created by 손영하  on 2023/08/09.
//

import SwiftUI

@main
struct todolistApp: App {
    @StateObject var store = TodoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store) /**동일한객체 사용가능**/
        }
    }
}
