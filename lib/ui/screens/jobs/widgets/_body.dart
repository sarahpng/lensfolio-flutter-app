part of '../jobs.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final screenState = _ScreenState.s(context, true);
    final jobsCubit = JobsCubit.c(context, true);
    final jobsState = jobsCubit.state;
    final jobs = jobsCubit.state.jobs;
    final list = jobs?.jobs ?? [];

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      padding: Space.sym(16, 0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Header(),
              Space.y.t12,
              _Filters(),
              Space.y.t12,
              if (screenState._filtersType == _FiltersType.savedJobs) ...[],
              if (jobsState.fetch.isSuccess &&
                  screenState._filtersType != _FiltersType.savedJobs) ...[
                ...list.map((job) => _JobCard(job)),
              ],
              Space.y.t100,
            ],
          ),
        ),
      ),
    );
  }
}
