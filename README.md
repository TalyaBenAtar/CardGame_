# 🃏 CardGame

> A simple iOS card game built with **Swift** and **UIKit** as part of an iOS development course.

This repository contains **both Assignment 1 and Assignment 2** of the CardGame project.

CardGame is a two-player game where the user competes against the computer over **10 rounds**. Every round both players receive a random card from a standard 52-card deck. The player with the higher-valued card earns one point (ties are awarded to the computer), and the final winner is determined after all rounds have been played.

The second assignment expands the original game with responsive layouts, Dark Mode support, sound effects, background music, and portrait orientation support while preserving all of the original functionality.

---

# ✨ Features

## ✅ Assignment 1

- 👤 Player name input
- 💾 Remembers the player's name between launches
- 🌍 Automatic location detection
- ↔️ Player side changes according to geographic location (West / East)
- 🃏 Standard 52-card deck
- ⏱️ Automatic 5-second rounds
  - Cards are revealed for 3 seconds
  - Cards are hidden for the final 2 seconds
- 🏆 Automatic score tracking
- 🎯 10-round gameplay
- 📊 Final results screen displaying the winner and player's score
- 🔄 Return to the main menu and play again

## ✅ Assignment 2

- 🌙 Full Dark Mode support
  - Dedicated dark-themed UI
  - Alternate playing card images
  - Automatically adapts to the system appearance

- 📱 Portrait Mode support
  - Responsive layouts for every screen
  - Supports both portrait and landscape orientations

- 🔊 Sound Effects
  - Card flip sound
  - Victory sound
  - Defeat sound

- 🎵 Background Music
  - Background music during gameplay
  - Automatically pauses when the app enters the background
  - Automatically resumes when returning to the app

---

# 🎮 Gameplay

1. Enter your name (only required the first time).
2. The application detects your location.
3. The player is automatically assigned to the **West Side** or **East Side** depending on their longitude.
4. Press **Start Game**.
5. Each round:
   - Two random cards are drawn.
   - The stronger card wins the round.
   - Ties are awarded to the computer.
6. After 10 rounds, the winner is displayed together with the player's final score.

---

# 🛠️ Technologies Used

- Swift
- UIKit
- Storyboards
- CoreLocation
- AVFoundation
- UserDefaults
- Xcode

---

# 📸 Screenshots

# Assignment 1

## 🌄 Landscape - Light Mode

### 🏠 Start Screen (West)

<img width="1035" height="503" alt="start_west_screenshot_cardGame" src="https://github.com/user-attachments/assets/8c6ec1e9-1fff-4305-8277-bee306ecc51b" />

---

### 🏠 Start Screen (East)

<img width="1011" height="507" alt="start_east_cardGame" src="https://github.com/user-attachments/assets/38e80e59-d5fb-4d84-9e86-2efe7dbe2fc8" />

---

### 🃏 Gameplay (West)

<img width="1035" height="505" alt="west_round_cardGame" src="https://github.com/user-attachments/assets/6f0c6f84-9414-4a3b-9cad-dbecb9d0d93e" />

---

### 🃏 Gameplay (East)

<img width="1031" height="507" alt="round_east_cardGame" src="https://github.com/user-attachments/assets/48f9cf98-5410-44c4-b545-8564ea6534e9" />

---

### 🏆 Result Screen

<img width="1022" height="511" alt="winner_cardGame" src="https://github.com/user-attachments/assets/095860dc-e698-4378-b6da-80044dd18493" />

---

# 🎥 Assignment 1 Videos

## 🌄 Landscape - Light Mode

### 🌍 West Side Gameplay

https://github.com/user-attachments/assets/d6481a8d-65ef-4327-9933-eaf4248d5dea

---

### 🌎 East Side Gameplay

https://github.com/user-attachments/assets/e78275d2-0597-421f-adb8-520170335acf

---

# Assignment 2

## 🌄 Landscape - Dark Mode

### 🏠 Start Screen

<img width="813" height="473" alt="start_landscape_dark" src="https://github.com/user-attachments/assets/7c0e5027-b960-4a30-9178-58d985135d57" />

---

### 🃏 Gameplay

<img width="822" height="484" alt="game_landscape_dark" src="https://github.com/user-attachments/assets/7e9f269f-d2a5-4f2a-a8e1-4558d7a36465" />

---


### 🏆 Result Screen

<img width="807" height="466" alt="result_landscape_dark" src="https://github.com/user-attachments/assets/9870e035-4499-41eb-91df-ab92f2a458db" />

---

## 📱 Portrait - Dark Mode

| 🏠 Start Screen | 🃏 Gameplay |🏆 Result Screen |
|:---------------:|:-----------:|:---------------:|
| <img src="https://github.com/user-attachments/assets/f6d8c8aa-2b9d-4735-9be7-2c79fce0003c" width="250"> | <img src="https://github.com/user-attachments/assets/f65c9ab8-4719-468f-9c61-30ff6a154b3e" width="250"> | <img src="https://github.com/user-attachments/assets/6512335b-524f-4728-af45-34c45354884d" width="250"> |

---

## ☀️ Portrait - Light Mode

| 🏠 Start Screen | 🃏 Gameplay | 🏆 Result Screen |
|:---------------:|:-----------:|:---------------:|
| <img src="https://github.com/user-attachments/assets/3b9e9677-a0ee-4d7d-9e48-6899600e19ec" width="250"> | <img src="https://github.com/user-attachments/assets/9d763e2a-8af8-49e6-a74b-021305eb1984" width="250"> | <img src="https://github.com/user-attachments/assets/7294e2b7-62fe-4299-8acf-d7ee30e1940d" width="250"> |

---


# 🎥 Assignment 2 Video

https://drive.google.com/file/d/1ivWLBsENExyZjqEGpDBbtU3Qwvf374YZ/view?usp=sharing

---


# 🎵 Assignment 2 Audio

## 🎼 Background Music

[background_music.mp3](https://github.com/user-attachments/files/29680171/background_music.mp3)

## 🃏 Card Flip Sound

[card_flip.wav](https://github.com/user-attachments/files/29680184/card_flip.wav)

## 😢 Losing Sound

[lose_sound.wav](https://github.com/user-attachments/files/29680187/lose_sound.wav)

## 🏆 Winning Sound

[win_sound.wav](https://github.com/user-attachments/files/29680189/win_sound.wav)


---

# 📂 Project Structure

```text
CardGame
│
├── Start Screen
│   ├── Player name
│   ├── Location detection
│   └── Start Game
│
├── Game Screen
│   ├── 52-card deck
│   ├── Timer
│   ├── Score tracking
│   ├── Sound effects
│   ├── Background music
│
├── Result Screen
│   ├── Winner
│   ├── Player score
│   └── Back to Menu
│
├── Sound Manager
│   ├── Background music
│   ├── Card flip sound
│   ├── Victory sound
│   └── Defeat sound
│
├── UI
│   ├── Landscape layouts
│   ├── Portrait layouts
│   └── Dark / Light themes

```

---


# 👩‍💻 Author

**Talya Ben Atar**

Computer Science Student  
Afeka Academic College of Engineering
