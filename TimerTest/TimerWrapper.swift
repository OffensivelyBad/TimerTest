//
//  TimerWrapper.swift
//  TimerTest
//
//  Created by Shawn on 1/29/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI

class TimerWrapper: ObservableObject {
    var timer: Timer!
    @Published var count = 0
    
    func start() {
        self.timer?.invalidate()
        self.count = 0
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (theTimer) in
            self.count += 1
            print(self.count)
        })
    }
}
