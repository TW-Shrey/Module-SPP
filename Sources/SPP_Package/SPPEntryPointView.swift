//
//  MyView.swift
//  
//
//  Created by Nangunuri Rachana on 29/03/23.
//

import SwiftUI

public struct SPPEntryPointView: View {
    public init() {}

    public var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SPPHomePageView()) {
                    Text("SPP")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct SPPHomePageView: View {
    var body: some View {
        VStack {
            Text("SPP Home Page View")
                .font(.largeTitle)
                .padding()
            Spacer()
            VStack {
                Image("mapPin")
                Text("Location")
            }
            Spacer()
            VStack {
                Image("sort")
                Text("Sort")
            }
            Spacer()
            VStack {
                Image("filter")
                Text("Filter")
            }
            Spacer()
        }
    }
}
