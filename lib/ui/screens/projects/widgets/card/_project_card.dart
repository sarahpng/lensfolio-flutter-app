part of '../../projects.dart';

class _ProjectCard extends StatelessWidget {
  final Projects project;
  const _ProjectCard(this.project);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Space.b.t08,
      padding: Space.a.t16,
      decoration: AppProps.boxdecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(project.title, style: AppText.h2b)),
              Icon(LucideIcons.pen, size: 20, color: AppTheme.c.secondary),
              Space.x.t16,
              Icon(LucideIcons.trash, size: 20, color: AppTheme.c.secondary),
            ],
          ),
          Space.y.t08,
          Text(project.description, style: AppText.b1 + AppTheme.c.subText),
          Space.y.t04,
          if (project.technologies.isNotEmpty)
            Wrap(
              spacing: SpaceToken.t04,
              children: [
                ...project.technologies.map(
                  (t) => Chip(label: Text(t, style: AppText.b1)),
                ),
              ],
            ),
          Divider(),
          Space.y.t08,
          Row(
            children: [
              if (project.liveUrl.available) ...[
                AppButton(
                  icon: LucideIcons.square_arrow_out_up_right,
                  label: 'View Demo',
                  textColor: AppTheme.c.secondary,
                  style: AppButtonStyle.transparent,
                ),
                Space.x.t08,
              ],
              if (project.githubUrl.available)
                AppButton(
                  icon: LucideIcons.github,
                  label: 'Source Code',
                  textColor: AppTheme.c.text,
                  style: AppButtonStyle.transparent,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
