//
//  HomeView.swift
//  FacebookUI
//
//  Created by Daniel Dramond on 19/11/2024.
//

import SwiftUI

struct HomeView: View {

    @State var selectedPost: Post?

    @State var posts: [Post] = [
        .init(user: .init(
            name: "Daniel Dramond",
            profileImageURL: .init(string: "https://ca.slack-edge.com/TL8NYHYS1-U02LF2D80N4-3f048edeb4a3-512")),
            text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 👽🛸🔭"),
        .init(user: .init(
            name: "Luke Donohue",
            profileImageURL: .init(string: "https://ca.slack-edge.com/TL8NYHYS1-U064T7206RG-fcc84850d36a-192")),
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 👋🏻")
    ]

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ForEach(self.posts, id: \.self) { post in
                    PostView(post: post)
                }
                .padding()
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .background(Color.gray.opacity(0.2))
            .navigationBarTitle("Facebook UI", displayMode: .large)
        }
    }
}

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
