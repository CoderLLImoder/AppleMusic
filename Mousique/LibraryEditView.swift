//
//  LibraryEditView.swift
//  Mousique
//
//  Created by Илья Капёрский on 28.12.2023.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var icon: String
    var name: String
}

struct MediatekaView: View {
    
    @State private var items: [Item] = [
        Item(icon: "music.note.list", name:"Плейлисты"),
        Item(icon: "music.mic", name: "Артисты"),
        Item(icon: "square.stack", name: "Альбомы"),
        Item(icon: "music.note", name: "Песни"),
        Item(icon: "tv", name: "Телешоу и фильмы"),
        Item(icon: "music.note.tv", name: "Видеоклипы"),
        Item(icon: "guitars", name: "Жанры"),
        Item(icon: "person.2.crop.square.stack.fill", name: "Сборники"),
        Item(icon: "music.quarternote.3", name: "Авторы"),
        Item(icon: "arrow.down.circle", name: "Загружено")
    ]
    
    @State private var selection = Set<String>()
    
    var body: some View {
        List(selection: $selection, content: {
            ForEach(items) { item in
                HStack {
                    Image(systemName: item.icon)
                        .foregroundColor(.red)
                        //.frame(width: 20)
                        .padding(5)
                    Text (item.name)
                        .font(.title3)
                        .padding(5)
                    
                }
            }
            .onMove { indexSet, index in
                self.items.move(fromOffsets: indexSet, toOffset: index)
            }
        })
        .listStyle(.inset)
    }
}

struct LibraryEditView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
