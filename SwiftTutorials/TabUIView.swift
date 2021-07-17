//
//  TabUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/13.
//

import SwiftUI

struct TabUIView: View {
    var body: some View {
        VStack{
            TabView {
                ContentView()
                    .tabItem {
                        VStack {
                            Image(systemName: "1.square")
                            Text("Content")
                        }
                    }.tag(1)
                ImageUIView()
                    .tabItem {
                        VStack {
                            Image(systemName: "2.square")
                            Text("image")
                        }
                    }.tag(2)
                VStackUIView()
                    .tabItem {
                        VStack {
                            Image(systemName: "3.square")
                            Text("VStack")
                        }
                    }.tag(3)
                HStackUIView()
                    .tabItem {
                        VStack {
                            Image(systemName: "4.square")
                            Text("HStack")
                        }
                    }.tag(4)
                ZStackUIView()
                    .tabItem {
                        VStack {
                            Image(systemName: "5.square")
                            Text("ZStack")
                        }
                    }.tag(5)
            }
        }
    }
}

struct TabUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabUIView()
    }
}
