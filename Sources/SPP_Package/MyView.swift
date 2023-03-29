//
//  MyView.swift
//  
//
//  Created by Nangunuri Rachana on 29/03/23.
//

import SwiftUI

public struct MyView: View {
    public init() {}

    public var body: some View {
        NavigationView {
            VStack {
                Text("Tap to navigate")
                    .font(.largeTitle)
                    .padding()
                NavigationLink(destination: SecondView()) {
                    Text("Navigate")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("Main View")
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
            .font(.largeTitle)
            .padding()
    }
}


public func getMyView() -> some View {
    return MyView()
}
