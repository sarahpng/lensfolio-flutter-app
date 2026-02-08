part of 'cubit.dart';

@immutable
class ProjectsState extends Equatable {
  // -- nested states -- //
  final BlocState<List<Projects>> fetchAll;

  // --- state data --- //
  final List<Projects>? projects;
  final String uid;
  // [STATE_FIELDS]

  // --- state data --- //
  const ProjectsState({
    required this.fetchAll,
    this.projects,
    this.uid = '0',
    // [STATE_CONSTRUCTOR]
  });

  ProjectsState.def()
    : // root-def_constructor
      // [STATE_DEF];
      fetchAll = BlocState(),
      projects = null,
      uid = '0';

  ProjectsState copyWith({
    BlocState<List<Projects>>? fetchAll,
    List<Projects>? projects,
    String? uid,
    // [STATE_COPYWITH_PARAMS]
  }) {
    return ProjectsState(
      fetchAll: fetchAll ?? this.fetchAll,
      projects: projects ?? this.projects,
      uid: uid ?? this.uid,
      // [STATE_COPYWITH_BODY]
    );
  }

  @override
  List<Object?> get props => [
    fetchAll,
    projects,
    uid,
    // [STATE_PROPS]
  ];
}
