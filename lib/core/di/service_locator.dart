import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_game_gdg/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import '../services/firebase_auth_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());

  // Register other services
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit());
}
