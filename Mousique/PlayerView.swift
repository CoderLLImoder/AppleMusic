//
//  Player.swift
//  Mousique
//
//  Created by Илья Капёрский on 30.01.2024.
//

import SwiftUI

struct PlayerView: View {
    
    @Namespace var animation
    
    enum HStackSettings: CGFloat {
        case hStackSpacing = 15
        case hStackSpacer = 0
        case hStackFrameHeight = 80
        case hStackOffset = -48
    }
    
    enum ImageSettings: CGFloat {
        case imageFrameHeightAndWidth = 58
        case imageCornerRadius = 10
    }
    
    var body: some View {
            
        HStack(spacing: HStackSettings.hStackSpacing.rawValue) {
            
            Image("Album")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(
                    width: ImageSettings.imageFrameHeightAndWidth.rawValue,
                    height: ImageSettings.imageFrameHeightAndWidth.rawValue
                )
                .cornerRadius(ImageSettings.imageCornerRadius.rawValue)
            
            VStack(alignment: .leading) {
                Text("Becane")
                    .font(.title2)
                    .fontWeight(.bold)
                    .matchedGeometryEffect(id: "Label", in: animation)
                Text("Yame")
                    .foregroundColor(.gray)
                    .matchedGeometryEffect(id: "Description", in: animation)
            }
            
            Spacer(minLength: HStackSettings.hStackSpacer.rawValue)
            
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
            
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
            
        }
        .padding([.horizontal, .bottom])
        .frame(maxHeight: HStackSettings.hStackFrameHeight.rawValue)
        .offset(y: HStackSettings.hStackOffset.rawValue)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
