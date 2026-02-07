part of 'cubit.dart';

@immutable
class UserState extends Equatable {
  // -- nested states -- //
  final BlocState<UserData> login;
  final BlocState<UserData> register;
  final BlocState<UserData> verify;
  // [STATE_FIELDS]

  // --- state data --- //
  const UserState({
    required this.login,
    required this.register,
    required this.verify,
    // [STATE_CONSTRUCTOR]
  });

  UserState.def()
    : // root-def_constructor
      register = BlocState(),
      verify = BlocState(),
      // [STATE_DEF];
      login = BlocState();

  UserState copyWith({
    BlocState<UserData>? login,
    BlocState<UserData>? register,
    BlocState<UserData>? verify,
    // [STATE_COPYWITH_PARAMS]
  }) {
    return UserState(
      login: login ?? this.login,
      register: register ?? this.register,
      verify: verify ?? this.verify,
      // [STATE_COPYWITH_BODY]
    );
  }

  @override
  List<Object?> get props => [
    login,
    register,
    verify,
    // [STATE_PROPS]
  ];
}
