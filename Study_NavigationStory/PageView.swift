//
//  PageView.swift
//  Study_NavigationStory
//
//  Created by 원태영 on 2022/11/22.
//

import SwiftUI

struct PageView: View {
    
    @Binding var stack : NavigationPath
    let page : Page
    
    var body: some View {
        VStack {

            Spacer()
            
            Text(page.script)
                .font(.title2)
                .foregroundColor(Color("appleWhiteScript"))
            
            Spacer()
            
            ForEach(page.nextPages, id: \.self) {nextPage in
                
                NavigationLink(nextPage.title, destination: PageView(stack: $stack, page: nextPage))
                    .fontWeight(.bold)
                    .padding(18)
                    .frame(width: 300)
                    .foregroundColor(Color("appleWhite"))
                    .background(Color("goldOrange"))
                    .cornerRadius(20)
                    .navigationTitle(page.title)
                
            }
            
            
            Spacer()

        }
        .padding(30)
        .frame(width: 400)
        .background(Color("darkBlue"))
        
        
    }
        
}

//struct PageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageView(page: Page(id: 1))
//    }
//}
