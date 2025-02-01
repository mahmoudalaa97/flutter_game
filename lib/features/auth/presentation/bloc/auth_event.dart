// Events
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  LoginRequested(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class SignUpRequested extends AuthEvent {
  final String email;
  final String username;
  final String password;

  SignUpRequested(this.email, this.username, this.password);

  @override
  List<Object?> get props => [email, username, password];
}

class LogoutRequested extends AuthEvent {}