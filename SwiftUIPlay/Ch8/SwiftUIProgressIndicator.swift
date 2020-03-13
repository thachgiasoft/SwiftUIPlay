//
//  SwiftUIProgressIndicator.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/2.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI
import AVFoundation
import Combine
var player: AVAudioPlayer = playSound()

struct SwiftUIProgressIndicator: View {
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255) ]), startPoint: .trailing, endPoint: .leading)
    @State var isPlaying = false
    @State var now = player.currentTime
    @State var end = player.duration
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    @State var per: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 130) {
            ZStack {
                Circle()
                    .stroke(Color(.systemGray6), lineWidth: 20)
                    .frame(width: 300, height: 300)
                Circle()
                    .trim(from: 0, to: per)
                    .stroke(purpleGradient, style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                    .frame(width: 300, height: 300)
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.easeIn)
                    .overlay(
                        VStack{
                            Text(now.stringFromTimeInterval())
                                .onReceive(timer) { _ in
                                    self.now = player.currentTime
                                    self.per = CGFloat(self.now / self.end)
                                    if !player.isPlaying {
                                        self.isPlaying = false
                                    }
                                }
                                .font(.system(size: 80, weight: .bold, design: .rounded))
                                .foregroundColor(Color(.systemGray))
                                
                            Text("Rumors")
                                .font(.system(.body, design: .rounded))
                                .bold()
                                .foregroundColor(Color(.systemGray))
                    })
            }
            HStack(spacing: 10) {
                Button(action: {
                    print(self.isPlaying)
                    self.isPlaying.toggle()
                    print(self.isPlaying)
                    if self.isPlaying {
                        player.play()
                    } else {
                        player.pause()
                    }
                }) {
                    Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(isPlaying ? .blue : .green)
                }
                Button(action: {
                    player.stop()
                    player.currentTime = 0
                    self.isPlaying = false
                }) {
                    Image(systemName: "stop.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(player.currentTime == 0 ? .gray : .red)
                }
                .disabled(player.currentTime == 0)
            }
            
            
        }
        .onDisappear() {
            if player.isPlaying {
                player.stop()
                player.currentTime = 0
            }
        }
        .onAppear() {
            self.isPlaying = false
            self.per = 0.0
        }
    }
}

struct SwiftUIProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIProgressIndicator()
    }
}
func playSound() -> AVAudioPlayer {
    let path = Bundle.main.path(forResource: "Me.m4a", ofType: nil)!
    let url = URL(fileURLWithPath: path)
    var player: AVAudioPlayer?

    do {
        player = try AVAudioPlayer(contentsOf: url)
        
    } catch {
        // couldn't load file :(
    }
    return player!
}
extension TimeInterval{
    func stringFromTimeInterval() -> String {
        let time = NSInteger(self)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        return String(format: "%0.2d:%0.2d" ,minutes,seconds)
    }
}
