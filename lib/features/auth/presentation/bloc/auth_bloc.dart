import 'package:bloc/bloc.dart';
import 'package:flutter_game_gdg/core/di/service_locator.dart';
import 'package:flutter_game_gdg/core/services/firebase_auth_service.dart';
import 'package:flutter_game_gdg/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_game_gdg/features/auth/presentation/bloc/auth_state.dart';

// BLoC
class AuthCubit extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuthService _firebaseAuthService =
      getIt.get<FirebaseAuthService>();

  AuthCubit() : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        await _firebaseAuthService.loginWithEmail(
          event.email,
          event.password,
        );
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        await _firebaseAuthService.signUpWithEmail(
          event.email,
          event.password,
        );
        await _firebaseAuthService
            .getCurrentUser()
            ?.updateDisplayName(event.username);

        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      await _firebaseAuthService.logout();
      emit(AuthInitial());
    });
  }
}
