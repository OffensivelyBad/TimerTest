//
//  ContentView.swift
//  TimerTest
//
//  Created by Shawn on 1/29/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TimerView(durationTimer: TimerWrapper(rest: 1, rounds: 2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
