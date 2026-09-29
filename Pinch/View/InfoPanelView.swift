//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Asadbek Saydullayev on 04/02/26.
//

import SwiftUI

struct InfoPanelView: View {
    
    let scale: CGFloat
    let offset: CGSize
    
    @State private var infoPanelVisible: Bool = false
    
    var body: some View {
        HStack {
            //MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        infoPanelVisible.toggle()
                    }
                }
            
            Spacer()
            
            //MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right.rectangle")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)" )
                
//                Spacer()
            } //: INFO PANEL
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(infoPanelVisible ? 1 : 0)
            
            
            Spacer()
        } //: HSTACK
    }
}

#Preview("Preview", traits: .sizeThatFitsLayout) {
    InfoPanelView(scale: 1, offset: .zero)
        .preferredColorScheme(.dark)
        .padding()
}
