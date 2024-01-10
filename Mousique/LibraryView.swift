//
//  LibraryView.swift
//  Mousique
//
//  Created by Илья Капёрский on 28.12.2023.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var isEditingMode = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isEditingMode {
                    LibraryEditView()
                } else {
                    EmptyView()
                }
            }
            .navigationTitle("Медиатека")
            .environment(\.editMode, .constant(EditMode.active))
            .accentColor(.red)
            
            .navigationBarItems(trailing: Button(action: {isEditingMode.toggle()}, label: {
                if isEditingMode {
                    Text("Готово")
                } else {
                    Text("Править")
                }
            })
                .padding(10)
                .foregroundColor(.red))
        }
    }
}
    
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
