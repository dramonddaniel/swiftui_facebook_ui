//
//  PostView.swift
//  FacebookUI
//
//  Created by Daniel Dramond on 04/12/2024.
//

import SwiftUI

struct PostView: View {

    var post: Post

    private let profileImageSize: CGSize = .init(width: 35, height: 35)

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                if let profileImageURL = post.user.profileImageURL?.absoluteString {
                    AsyncImage(url: URL(string: profileImageURL)) { image in
                        image.resizable()
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: profileImageSize.width, height: profileImageSize.height)
                    .clipShape(.rect(cornerRadius: 20))
                }
                Text(post.user.name)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.black)
                Spacer()
            }
            Text(post.text)
                .font(.system(size: 18, weight: .regular))
                .foregroundStyle(.black)
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
    }
}
