//
//  PageView.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/11/22.
//

import SwiftUI

struct PageView: View {
    
    // MARK: -
    
    
    
    @ObservedObject var pageStore : PageStore
    @Binding var stack : NavigationPath
    let page : Page
    
    var body: some View {
        VStack {
            if page.id == 7 {
                AsyncImage(url: URL(string: "https://animalcrossing.soopoolleaf.com/image/acnlanimal/Timmy.png")!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }.frame(width: 250, height: 250)
            }
            Spacer()
            Text(page.script)
                .modifier(ScriptModifier())
            Spacer()
            ForEach(page.nextPages, id: \.self) {nextPage in
                NavigationLink(nextPage.title, destination: PageView(pageStore: $stack, page: nextPage))
                    .modifier(NavigationModifier())
                    .navigationTitle(page.title)
            }
            .padding(.bottom, 10)
            if page.id == 9 {
                Button {
                    stack.removeLast(stack.count)
                } label: {
                    Text("첫 화면으로 돌아가기")
                        .modifier(NavigationModifier())
                }

            }
            Spacer()

        }
        .modifier(BackgroundModifier())
    }
}

struct ScriptModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundColor(Color("appleWhiteScript"))
    }
}

struct BackgroundModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(30)
            .frame(width: 400)
            .background(Color("darkBlue"))
    }
}

struct NavigationModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .padding(18)
            .frame(width: 300)
            .foregroundColor(Color("appleWhite"))
            .background(Color("goldOrange"))
            .cornerRadius(20)
    }
}

//struct PageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageView(page: Page(id: 1))
//    }
//}
