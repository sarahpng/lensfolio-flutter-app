part of '../../jobs.dart';

class _JobCard extends StatelessWidget {
  final Job job;
  const _JobCard(this.job);

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Avatar(image: job.comapnyLogo, borderType: BorderType.none),
              Space.x.t08,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(job.title, style: AppText.h3b),
                    Space.y.t04,
                    Row(
                      children: [
                        Icon(
                          LucideIcons.building_2,
                          size: SpaceToken.t16,
                          color: AppTheme.c.subText,
                        ),
                        Space.x.t04,
                        Text(
                          job.comapnyName,
                          style: AppText.b1 + AppTheme.c.subText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                LucideIcons.bookmark,
                size: SpaceToken.t20,
                color: AppTheme.c.primary,
              ),
            ],
          ),

          Space.y.t08,
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children: [
              if (job.candidateRequiredLocation.available) ...[
                InfoChip(
                  icon: LucideIcons.map_pin,
                  info: job.candidateRequiredLocation!,
                ),
              ],
              if (job.salary.available) ...[
                InfoChip(icon: LucideIcons.dollar_sign, info: job.salary!),
              ],
              if (job.jobType.available) ...[
                InfoChip(icon: LucideIcons.briefcase, info: job.jobType!),
              ],
            ],
          ),
          if (job.description.available) ...[
            Space.y.t12,
            Text(
              HtmlParser.parse(job.description!),
              style: AppText.b1 + AppTheme.c.subText,
              maxLines: 5,
            ),
          ],
          Space.y.t12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                job.publicationDate.timeAgoShort,
                style: AppText.b1 + AppTheme.c.subText,
              ),
              AppButton(
                style: AppButtonStyle.primaryBorder,
                label: 'Apply Now',
                icon: LucideIcons.square_arrow_out_up_right,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String info;
  const InfoChip({super.key, required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.sym(6, 4),
      decoration: BoxDecoration(
        color: AppTheme.c.subText.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            Icon(icon, color: AppTheme.c.subText, size: SpaceToken.t16),
            Space.x.t04,
            Text(info, style: AppText.b1 + AppTheme.c.subText),
          ],
        ),
      ),
    );
  }
}
