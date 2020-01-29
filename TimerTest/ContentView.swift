//
//  ContentView.swift
//  TimerTest
//
//  Created by Shawn on 1/29/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var durationTimer = TimerWrapper()
    
    var body: some View {
        VStack {
            Text("\(durationTimer.count)")
            Button(action: {
                self.durationTimer.start()
            }, label: {
                Text("Fire!")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
