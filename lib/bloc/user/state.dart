part of 'cubit.dart';

@immutable
class UserState extends Equatable {
  // -- nested states -- //
  final BlocState<UserData> login;

  // --- state data --- //
  const UserState({
    required this.login
  });

  UserState.def()
  : // root-def_constructor
  login = BlocState();

  UserState copyWith({
    BlocState<UserData>? login,
  }) {
    return UserState(
      login: login ?? this.login,
    );
  }

  @override
  List<Object?> get props => [
    login,
  ];

}