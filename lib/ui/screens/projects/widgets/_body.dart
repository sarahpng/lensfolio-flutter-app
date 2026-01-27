part of '../projects.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final projectsCubit = ProjectsCubit.c(context, true);
    final projectsState = projectsCubit.state;
    final projects = projectsState.projects;

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      padding: Space.sym(16, 0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_Header(), Text(projects?[0].title ?? 'No Projects')],
          ),
        ),
      ),
    );
  }
}
