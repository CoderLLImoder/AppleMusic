//
//  RadioView.swift
//  Mousique
//
//  Created by Илья Капёрский on 11.02.2024.
//

import SwiftUI

struct RadioView: View {
    
    var rows = [
        GridItem(.fixed(350))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators:  false) {
                RadioCollectionView()
                
                RadioStationView()
            }
            .navigationTitle("Радио")
        }
    }
}
    
struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

