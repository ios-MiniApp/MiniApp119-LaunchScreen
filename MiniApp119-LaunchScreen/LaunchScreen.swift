//
//  LaunchScreen.swift
//  MiniApp119-LaunchScreen
//
//  Created by 前田航汰 on 2023/05/16.
//

import SwiftUI

struct LaunchScreen: View {

    @State private var isLoading = true

    var body: some View {

        if isLoading {
            ZStack {
                Color(.white)
                    //.ignoresSafeArea() // ステータスバーまで塗り潰すために必要
                Image("SampleLogo")
                    //.ignoresSafeArea() // ステータスバーまで塗り潰すために必要
                    //.resizable()
                    //.aspectRatio(contentMode: .fit)
//                    .padding()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        isLoading = false
                    }
                }
            }
        } else {
            ContentView()
        }
    }
}

//struct InitialScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LaunchScreen()
//    }
//}
