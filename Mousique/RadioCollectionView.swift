//
//  RadioCollectionView.swift
//  Mousique
//
//  Created by Илья Капёрский on 03.03.2024.
//

import SwiftUI

enum VStackSettings: CGFloat {
    case hStackSpacing = 15
    case hStackSpacer = 5
    case hStackFrameHeight = 80
    case hStackOffset = -48
}

var rows = [
    GridItem(.flexible())
]

struct Collection: Identifiable {
    var id = UUID().uuidString
    var image: String
    var tag: String
    var name: String
    var note: String
}

enum AlbumSettings: CGFloat {
    case imageFrameHeight = 220
    case imageFrameWidth = 350
    case imageCornerRadius = 10
}

let collections: [Collection] =
[
    Collection(image: "basta", tag: "Новый выпуск", name: "Популярное", note: "То, что слушают прямо сейчас."),
    Collection(image: "beats01", tag: "Эксклюзив", name: "Классика", note: "Выдающиеся образцы жанра.")
]

struct RadioCollectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<2) { index in
                    VStack(spacing: HStackSettings.hStackSpacing.rawValue) {
                        
                        VStack(alignment: .leading) {
                            Text(collections[index].tag).font(.subheadline).foregroundColor(.gray)
                            Text(collections[index].name).font(.title3)
                            Text(collections[index].note).font(.callout).foregroundColor(.gray)
                        }
                        .padding(.trailing, 100)
                        
                        Image(collections[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: AlbumSettings.imageFrameWidth.rawValue,
                                height: AlbumSettings.imageFrameHeight.rawValue
                            )
                            .cornerRadius(AlbumSettings.imageCornerRadius.rawValue)
                            .padding()
                        
                        //Spacer(minLength: HStackSettings.hStackSpacer.rawValue)
                    }
                }
            }
        }
    }
}
    
struct RadioCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        RadioCollectionView()
    }
}
