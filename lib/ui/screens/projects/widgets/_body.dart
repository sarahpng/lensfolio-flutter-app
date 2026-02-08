part of '../projects.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final screenState = _ScreenState.s(context);
    double bottomBarHeight = 80.sp();
    // final projectsCubit = ProjectsCubit.c(context, true);
    // final projectsState = projectsCubit.state;
    // final projects = projectsState.projects;

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      bottomBarHeightChanged: (height) {
        setState(() {
          bottomBarHeight = height;
        });
      },
      overlayBuilders: [
        Positioned(
          bottom: bottomBarHeight + 55.sp(),
          right: SpaceToken.t16,
          child: AppButton(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              routeSettings: RouteSettings(name: '/projects/new-project'),
              builder: (_) => ListenableProvider.value(
                value: screenState,
                child: const _ProjectSheet(),
              ),
            ),
            style: .secondary,
            icon: LucideIcons.plus,
            size: .large,
            borderRadius: .capsule,
          ),
        ),
      ],
      padding: Space.sym(16, 0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              _Header(),
              Space.y.t12,
              BlocBuilder<ProjectsCubit, ProjectsState>(
                builder: (context, state) {
                  return state.fetchAll.maybeWhen(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: () {
                      if (state.projects != null) {
                        return Column(
                          children: [
                            ...state.projects!.map((p) => _ProjectCard(p)),
                            Space.y.t100,
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            Space.y.t100,
                            Icon(
                              LucideIcons.file,
                              size: 100,
                              color: AppTheme.c.secondary.withValues(
                                alpha: 0.4,
                              ),
                            ),
                            Space.y.t24,
                            Text('No Projects Founds', style: AppText.h1),
                          ],
                        );
                      }
                    },
                    orElse: () => const Text('something went wrong'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
