//
//  SoundManager.swift
//  CardGame
//
//  Created by Talya Benatar on 05/07/2026.
//

//import Foundation
import AVFoundation

class SoundManager {
    
    static let shared = SoundManager()
    
    private var backgroundPlayer: AVAudioPlayer?
    private var effectPlayer: AVAudioPlayer?
    
    private init() {}
    
    func playBackgroundMusic() {
        guard backgroundPlayer == nil else {
            backgroundPlayer?.play()
            return
        }
        
        guard let url = Bundle.main.url(forResource: "background_music", withExtension: "mp3") else {
            print("Background music file not found")
            return
        }
        
        do {
            backgroundPlayer = try AVAudioPlayer(contentsOf: url)
            backgroundPlayer?.numberOfLoops = -1
            backgroundPlayer?.volume = 0.25
            backgroundPlayer?.play()
        } catch {
            print("Could not play background music: \(error.localizedDescription)")
        }
    }
    
    func pauseBackgroundMusic() {
        backgroundPlayer?.pause()
    }
    
    func resumeBackgroundMusic() {
        backgroundPlayer?.play()
    }
    
    func stopBackgroundMusic() {
        backgroundPlayer?.stop()
        backgroundPlayer = nil
    }
    
    func playFlipSound() {
        playEffect(named: "card_flip", extensionName: "wav")
    }
    
    func playWinSound() {
        playEffect(named: "win_sound", extensionName: "wav")
    }
    
    func playLoseSound() {
        playEffect(named: "lose_sound", extensionName: "wav")
    }
    
    private func playEffect(named name: String, extensionName: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: extensionName) else {
            print("Sound file not found: \(name).\(extensionName)")
            return
        }
        
        do {
            effectPlayer = try AVAudioPlayer(contentsOf: url)
            effectPlayer?.volume = 0.8
            effectPlayer?.play()
        } catch {
            print("Could not play sound effect: \(error.localizedDescription)")
        }
    }
}
