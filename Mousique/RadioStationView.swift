//
//  RadioStationView.swift
//  Mousique
//
//  Created by Илья Капёрский on 03.03.2024.
//

import SwiftUI

enum HStackSettings: CGFloat {
    case hStackSpacing = 15
    case hStackSpacer = 5
    case hStackFrameHeight = 80
    case hStackOffset = -48
}

var columns = [
    GridItem(.flexible())
]

struct Station: Identifiable {
    var id = UUID().uuidString
    var image: String
    var name: String
    var note: String
}

enum ImageSettings: CGFloat {
    case imageFrameHeightAndWidth = 100
    case imageCornerRadius = 10
}

let stations: [Station] =
[
    Station(image: "pop", name: "Популярное", note: "То, что слушают прямо сейчас."),
    Station(image: "classic", name: "Классика", note: "Выдающиеся образцы жанра."),
    Station(image: "relax", name: "Музыка для расслабления", note: "Электронная медитация.")
]

struct RadioStationView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                Text("Станции")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.trailing, 240)
                ForEach(0..<3) { index in
                    HStack(spacing: HStackSettings.hStackSpacing.rawValue) {
                        Image(stations[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: ImageSettings.imageFrameHeightAndWidth.rawValue,
                                height: ImageSettings.imageFrameHeightAndWidth.rawValue
                            )
                            .cornerRadius(ImageSettings.imageCornerRadius.rawValue)
                            .padding(.leading)
                        
                        VStack(alignment: .leading) {
                            Text(stations[index].name)
                            Text(stations[index].note).font(.callout).foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: HStackSettings.hStackSpacer.rawValue)
                    }
                    Divider()
                }
            }
        }
    }
}
    
struct RadioStationView_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationView()
    }
}
