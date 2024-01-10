//
//  EmptyView.swift
//  Mousique
//
//  Created by Илья Капёрский on 10.01.2024.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
            VStack{
                Text("Ищете свою музыку?").font(.title2).bold()
                Text("Здесь появится купленная Вами музыка.").font(.callout)
                    .foregroundColor(.gray)
        }
    }
}
    
struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
