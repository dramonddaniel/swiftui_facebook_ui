//
//  MainView.swift
//  FacebookUI
//
//  Created by Daniel Dramond on 03/12/2024.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}
