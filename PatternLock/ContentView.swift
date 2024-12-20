//
//  ContentView.swift
//  PatternLock
//
//  Created by xqsadness on 20/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink("Pattern Lock"){
                    PatternLockScreen()
                }
                
                NavigationLink("Passcode Lock"){
                    PasscodeHomeView()
                }
            }
            .navigationTitle("Pattern lock")
        }
    }
}

#Preview {
    ContentView()
}
