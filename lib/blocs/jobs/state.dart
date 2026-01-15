part of 'cubit.dart';

@immutable
class JobsState extends Equatable {
  // -- nested states -- //
  final BlocState<Job> fetch;
  // [STATE_FIELDS]

  // --- state data --- //
  const JobsState({
    required this.fetch,
    // [STATE_CONSTRUCTOR]
  });

  JobsState.def()
  : // root-def_constructor
  fetch = BlocState();
  // [STATE_DEF];

  JobsState copyWith({
    BlocState<Job>? fetch,
    // [STATE_COPYWITH_PARAMS]
  }) {
    return JobsState(
      fetch: fetch ?? this.fetch,
      // [STATE_COPYWITH_BODY]
    );
  }

  @override
  List<Object?> get props => [
    fetch,
    // [STATE_PROPS]
  ];
}