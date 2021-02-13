part of 'login_page_bloc.dart';

class LoginPageState extends Equatable {
  const LoginPageState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
  });

  final Email email;
  final Password password;
  final FormzStatus status;

  LoginPageState copyWith({
    Email email,
    Password password,
    FormzStatus status,
  }) {
    return LoginPageState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [email, password, status];
}
