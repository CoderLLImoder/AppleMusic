//
//  LibraryView.swift
//  Mousique
//
//  Created by Илья Капёрский on 28.12.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Ищете свою музыку?").font(.title2).bold()
                Text("Здесь появится купленная Вами музыка.").font(.callout)
                    .foregroundColor(.gray)
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(destination: LibraryEditView(), label: {
                Text("Править")
                    
            })
                .padding(10)
                .foregroundColor(.red))
        }
        .navigationBarBackButtonHidden()
    }
}
    
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
