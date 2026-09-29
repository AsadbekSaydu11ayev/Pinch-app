//
//  ControlImageView.swift
//  Pinch
//
//  Created by Asadbek Saydullayev on 05/02/26.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ControlImageView(icon: "plus.magnifyingglass")
        .preferredColorScheme(.dark)
        .padding()
}
