//
//  LibraryEditView.swift
//  Mousique
//
//  Created by Илья Капёрский on 28.12.2023.
//

import SwiftUI

struct Item: Hashable {
    var icon: String
    var name: String
}

struct LibraryEditView: View {
    
    let items = [
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
    
    let icons = ["music.note.list", "music.mic", "square.stack", "music.note", "tv", "music.note.tv", "guitars", "person.2.crop.square.stack.fill", "music.quarternote.3", "arrow.down.circle"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self)
                {
                    item in
                    HStack {
                        Toggle("", isOn: .constant(true))
                        
                        Image(systemName: item.icon)
                            .foregroundColor(.red)
                        Text (item.name)
                            .font(.title3)
                        
                    }
                }
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(destination: LibraryView(), label: {
                Text("Готово")
                
            })
                .padding(10)
                .foregroundColor(.red))
        }
        .navigationBarBackButtonHidden()
        
    }
}

struct LibraryEditView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryEditView()
    }
}
