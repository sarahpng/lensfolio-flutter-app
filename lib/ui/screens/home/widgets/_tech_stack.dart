part of '../home.dart';

class _TechStack extends StatelessWidget {
  const _TechStack();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data!;
    final techStack = userData.techStack;
    if (techStack.isEmpty) return SizedBox.shrink();

    return Container(
      padding: Space.a.t16,
      decoration: AppProps.boxdecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tech Stack', style: AppText.h1b),
          Space.y.t04,
          Column(
            children: techStack
                .map(
                  (tech) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${tech.category.name.titleCase}: ',
                        style: AppText.b1b + AppTheme.c.subText,
                      ),
                      Expanded(
                        child: Text(
                          tech.technologies.join(', '),
                          style: AppText.b1 + AppTheme.c.subText,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
