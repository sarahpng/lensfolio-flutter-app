part of 'cubit.dart';

@immutable
class JobsState extends Equatable {
  // -- nested states -- //
  final BlocState<JobFetchResponse> fetch;
  final JobFetchResponse? jobs;
  // [STATE_FIELDS]

  // --- state data --- //
  const JobsState({
    required this.fetch,
    this.jobs,
    // [STATE_CONSTRUCTOR]
  });

  JobsState.def()
    : // root-def_constructor
      fetch = BlocState(),
      jobs = null;

  // [STATE_DEF];

  JobsState copyWith({
    BlocState<JobFetchResponse>? fetch,
    JobFetchResponse? jobs,
    // [STATE_COPYWITH_PARAMS]
  }) {
    return JobsState(
      fetch: fetch ?? this.fetch,
      jobs: jobs ?? this.jobs,
      // [STATE_COPYWITH_BODY]
    );
  }

  @override
  List<Object?> get props => [
    fetch,
    jobs,
    // [STATE_PROPS]
  ];
}
