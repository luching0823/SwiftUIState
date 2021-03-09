//
//  ContentView.swift
//  SwiftUIState
//
//  Created by 廖昱晴 on 2021/3/9.
//

import SwiftUI

struct ContentView: View {
    
    //@State: 監聽狀態
//    @State private var isPlaying = false //當isPlaying狀態更改時，SwiftUI會參照isPlaying狀態重新計算視圖
    @State private var counter1 = 1
    @State private var counter2 = 1
    @State private var counter3 = 1
    
    var body: some View {
//        Button(action: {
//            //切換「播放」與「停止」按鈕
//            self.isPlaying.toggle()
//        }) {
//            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
//                .font(.system(size: 150))
//                .foregroundColor(.green)
//        }
        
        VStack {
            Text("\(counter1 + counter2 + counter3)")
                .font(.system(size: 160, weight: .bold, design: .rounded))
            HStack {
                CounterButton(counter: $counter1, color: .blue)
                CounterButton(counter: $counter2, color: .red)
                CounterButton(counter: $counter3, color: .green)
            }
        }
        
        
    }
}

struct CounterButton: View {
    @Binding var counter: Int

    var color: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .overlay(
                Text("\(counter)")
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
