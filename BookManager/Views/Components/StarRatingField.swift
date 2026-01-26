//
//  StarRatingField.swift
//  BookManager
//
//  Created by Daisha McCutcheon on 1/25/26.
//

import SwiftUI

struct StarRatingField: View {
    @Binding var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { star in
                Button(action: {
                    self.rating = star }) {
                        Image(systemName: star <= self.rating ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    }.buttonStyle(.plain)
            }
        }
    }
}
