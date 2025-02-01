# Flutter Gaming App

## Overview
Flutter Gaming App is a mobile and web-based gaming application that allows users to create profiles, earn scores, challenge other users, and engage in quizzes. The app includes an admin dashboard for managing game content and user interactions.

## Features (Sorted by Development Order)
- [ ] **Authentication**: Users can sign up and log in using email and a unique username.
- [ ] **User Profile**: Users can create and manage their profiles.
- [ ] **User Score**: Tracks and displays user scores based on challenges.
- [ ] **Create & Share Rooms**: Users can create rooms and invite friends to join.
- [ ] **Game Management**: The user who created the room (admin) can start the game.
- [ ] **Real-time Multiplayer Support**: Implement WebSockets or Firebase Firestore for real-time gameplay.
- [ ] **Challenges**: Users can challenge each other and compete.
- [ ] **Leaderboard System**: Show rankings of top players based on scores and achievements.
- [ ] **Game Timer**: Implement a countdown timer for challenges.
- [ ] **In-game Chat**: Allow players to communicate within rooms.
- [ ] **Match History & Stats**: Enable users to view previous games and performance analytics.
- [ ] **User Customization**: Avatars, themes, and user badges for engagement.
- [ ] **AI Opponent (Optional)**: Allow solo users to play against an AI.
- [ ] **Admin Dashboard**: Built using Flutter Web to manage users, questions, and challenges.
- [ ] **Question Management**: Admins can add questions and answers.
- [ ] **User Management**: Admins can view user profiles and scores.

## Technology Stack
### **Frontend & Backend**
- **Flutter**: Used for both mobile and web applications.
- **State Management**: BLoC pattern for handling state efficiently.
- **Routing**: Using a router package for navigation.

### **Database & Storage**
- **Firebase**: Used as the primary database to store user data and questions.
- **SQLite**: Used locally to save authentication tokens for offline support.

### **Networking & API Handling**
- **Dio**: HTTP client for handling API requests efficiently.

### **Notifications**
- **Firebase Cloud Messaging (FCM)**: Used for real-time notifications.

## Installation Guide
1. **Clone the repository**
   ```sh
   git clone https://github.com/mahmoudalaa97/flutter_game.git
   cd flutter_game
   ```
2. **Install dependencies**
   ```sh
   flutter pub get
   ```
3. **Run the app**
   ```sh
   flutter run
   ```
   For Web:
   ```sh
   flutter run -d chrome
   ```

## Folder Structure
```
lib/
│── main.dart  # Entry point of the application
│── core/
│   ├── router.dart  # Handles app routing
│   ├── services/
│   │   ├── api_service.dart  # Handles API requests
│   │   ├── notification_service.dart  # Manages notifications
│   ├── database/
│   │   ├── sqlite_service.dart  # Manages local storage
│── features/
│   ├── auth/  # Authentication screens & logic
│   │   ├── signup_screen.dart  # Signup with email and unique username
│   │   ├── login_screen.dart  # Login with email and password
│   ├── user/
│   │   ├── profile/  # User profile-related screens
│   │   ├── challenges/  # Challenge functionality
│   │   ├── rooms/  # Room creation and management
│   ├── admin/
│   │   ├── dashboard/  # Admin dashboard UI and logic
│   │   ├── question_manager/  # Admin tools for managing questions
│── blocs/  # BLoC state management logic
│── widgets/  # Reusable UI components
```

## Contribution
1. Fork the repository.
2. Create a new branch (`feature/your-feature`).
3. Commit your changes.
4. Push to your branch and submit a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
