//
//  InfoView.swift
//  SwiftUIPersonalCard
//
//  Created by Mark Marvin Blanca on 3/11/21.
//

import SwiftUI

struct InfoView: View {
    var icon: String
    var text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(.green)
                    Text(text)
                        .foregroundColor(.black)
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(icon: "phone.fill", text: "Sample")
            .previewLayout(.sizeThatFits)
    }
}
