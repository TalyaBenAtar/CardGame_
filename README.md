# 🃏 CardGame

> A simple iOS card game built with **Swift** and **UIKit** as part of an iOS development assignment.

CardGame is a two-player game where the user competes against the computer over **10 rounds**. Every round both players receive a random card from a standard 52-card deck. The player with the higher-valued card earns one point (ties are awarded to the computer), and the final winner is determined after all rounds have been played.

---

# ✨ Features

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
- UserDefaults
- Xcode

---

# 📸 Screenshots

## 🏠 Start Screen West

<img width="1035" height="503" alt="start_west_screenshot_cardGame" src="https://github.com/user-attachments/assets/8c6ec1e9-1fff-4305-8277-bee306ecc51b" />

---

## 🏠 Start Screen East

<img width="1011" height="507" alt="start_east_cardGame" src="https://github.com/user-attachments/assets/38e80e59-d5fb-4d84-9e86-2efe7dbe2fc8" />

---

## 🃏 Gameplay West

<img width="1035" height="505" alt="west_round_cardGame" src="https://github.com/user-attachments/assets/6f0c6f84-9414-4a3b-9cad-dbecb9d0d93e" />

---
## 🃏 Gameplay East

<img width="1031" height="507" alt="round_east_cardGame" src="https://github.com/user-attachments/assets/48f9cf98-5410-44c4-b545-8564ea6534e9" />

---

## 🏆 Result Screen

<img width="1022" height="511" alt="winner_cardGame" src="https://github.com/user-attachments/assets/095860dc-e698-4378-b6da-80044dd18493" />

---

# 🎥 Demo Videos

## 🌍 West Side Gameplay

https://github.com/user-attachments/assets/d6481a8d-65ef-4327-9933-eaf4248d5dea

---

## 🌎 East Side Gameplay

https://github.com/user-attachments/assets/e78275d2-0597-421f-adb8-520170335acf

---

# 📂 Project Structure

```
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
│   └── 10 rounds
│
└── Result Screen
    ├── Winner
    ├── Player score
    └── Back to Menu
```

---

# 🚀 Future Improvements (Assignment 2)

The next assignment expands the game with several new features and UI improvements:

- 🌙 Full Dark Mode support
  - Alternate card images
  - Dark-themed interface
  - Automatically adapts to the device appearance

- 📱 Portrait Mode support
  - Responsive layout designed for both landscape and portrait orientations

- 🔊 Sound Effects
  - Card flip sound during gameplay
  - Victory sound when the game ends

- 🎵 Background Music
  - Background music while playing
  - Music pauses automatically when the application moves to the background and resumes when returning

These enhancements will improve the overall user experience while demonstrating additional iOS development concepts introduced in the second assignment.

---

# 👩‍💻 Author

**Talya Ben Atar**

Computer Science Student  
Afeka Academic College of Engineering
