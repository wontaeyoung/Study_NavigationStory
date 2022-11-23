//
//  ContentView.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path : $stack) {
            PageView(stack: $stack, page: Page(id: 1))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
