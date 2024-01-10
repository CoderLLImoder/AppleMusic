//
//  LibraryEditView.swift
//  Mousique
//
//  Created by Илья Капёрский on 28.12.2023.
//

import SwiftUI

struct Item: Hashable {
    var isOn: Bool
    var icon: String
    var name: String
}

struct LibraryEditView: View {
    
    var items = [
        Item(isOn: false, icon: "music.note.list", name:"Плейлисты"),
        Item(isOn: false, icon: "music.mic", name: "Артисты"),
        Item(isOn: false, icon: "square.stack", name: "Альбомы"),
        Item(isOn: false, icon: "music.note", name: "Песни"),
        Item(isOn: false, icon: "tv", name: "Телешоу и фильмы"),
        Item(isOn: false, icon: "music.note.tv", name: "Видеоклипы"),
        Item(isOn: false, icon: "guitars", name: "Жанры"),
        Item(isOn: false, icon: "person.2.crop.square.stack.fill", name: "Сборники"),
        Item(isOn: false, icon: "music.quarternote.3", name: "Авторы"),
        Item(isOn: false, icon: "arrow.down.circle", name: "Загружено")
    ]
    
    var body: some View {
        ZStack {
            List {
                ForEach(items, id: \.self)
                {
                    item in
                    HStack {
                        /*Circle()
                         .stroke()
                         .foregroundColor(.gray)
                         .frame(width: 23, height: 23)
                         .overlay {
                         Image(systemName: LibraryEditView.isOn ? "checkmark.circle.fill" : "")
                         .foregroundColor( .red)
                         .imageScale(.large)
                         }
                         .onTapGesture {
                         withAnimation(.spring()) {
                         LibraryEditView.isOn.toggle()
                         }
                         }*/
                        Image(systemName: item.icon)
                            .foregroundColor(.red)
                            .frame(width: 20)
                            .padding(5)
                        Text (item.name)
                            .font(.title3)
                            .padding(5)
                        
                    }
                }
                
            }
            .listStyle(.plain)
        }
    }
}

struct LibraryEditView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryEditView()
    }
}
