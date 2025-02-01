import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_gdg/core/di/service_locator.dart';
import 'package:flutter_game_gdg/core/services/firebase_auth_service.dart';
import 'package:flutter_game_gdg/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_game_gdg/features/auth/presentation/bloc/auth_event.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final authCubit = context.read<AuthCubit>();
    final user = getIt.get<FirebaseAuthService>().getCurrentUser();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: HomeDrawer(
        user: user,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, ${user?.email ?? "Guest"}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('User Profile'),
              subtitle: const Text('Manage your profile settings'),
              onTap: () => context.push('/profile'),
            ),
            ListTile(
              leading: const Icon(Icons.score),
              title: const Text('User Score'),
              subtitle: const Text('Track and view your score'),
              onTap: () => context.push('/score'),
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Create & Share Rooms'),
              subtitle: const Text('Invite friends and start a game'),
              onTap: () => context.push('/rooms'),
            ),
            ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text('Game Management'),
              subtitle: const Text('Manage and start games as an admin'),
              onTap: () => context.push('/game-management'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  final user;

  const HomeDrawer({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user?.email ?? "Guest"),
            accountEmail: const Text("Score: 0"),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.blue),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              context.read<AuthCubit>().add(LogoutRequested());
            },
          ),
        ],
      ),
    );
  }
}
