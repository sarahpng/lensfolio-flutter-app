part of 'cubit.dart';

@immutable
class UserState extends Equatable {
  // -- nested states -- //
  final BlocState<UserData> login;
  final BlocState<UserData> register;
  // [STATE_FIELDS]

  // --- state data --- //
  const UserState({
    required this.login,
    required this.register,
    // [STATE_CONSTRUCTOR]
  });

  UserState.def()
  : // root-def_constructor
  register = BlocState(),
    // [STATE_DEF];
  login = BlocState();

  UserState copyWith({
    BlocState<UserData>? login,
    BlocState<UserData>? register,
    // [STATE_COPYWITH_PARAMS]
  }) {
    return UserState(
      login: login ?? this.login,
      register: register ?? this.register,
      // [STATE_COPYWITH_BODY]
    );
  }

  @override
  List<Object?> get props => [
    login,
    register,
    // [STATE_PROPS]
  ];
}