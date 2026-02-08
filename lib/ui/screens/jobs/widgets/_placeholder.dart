part of '../jobs.dart';

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        // Search header skeleton
        Space.y.t16,
        // Job cards skeleton (3 cards)
        ...List.generate(
          5,
          (_) => const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
            child: _JobCardSkeleton(),
          ),
        ),
      ],
    );
  }
}

class _JobCardSkeleton extends StatelessWidget {
  const _JobCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: Space.b.t08,
      padding: Space.a.t16,
      decoration: AppProps.boxdecoration.copyWith(
        // Ensure the skeleton doesn't look like a solid block if boxdecoration has a color
        color: AppTheme.c.background,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row: Title/Company + Bookmark
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Skeleton(type: SkeletonType.textLeft, width: 180),
              Space.y.t04,
              const Skeleton(
                type: SkeletonType.textLeft,
                width: 120,
                height: 14,
              ),
            ],
          ),
          Space.y.t12,

          // InfoChips Wrap Section
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children: List.generate(
              3,
              (index) => const Skeleton(
                type: SkeletonType.card,
                width: 80,
                height: 10,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          Space.y.t12,

          // Description Paragraph
          const Skeleton(type: SkeletonType.paragraph),
          Space.y.t12,

          // Publication Date
          const Skeleton(type: SkeletonType.textLeft, width: 60, height: 12),
          Space.y.t16,

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Skeleton(type: SkeletonType.button, width: 110),
              Space.x.t08,
              const Skeleton(type: SkeletonType.button, width: 140),
            ],
          ),
        ],
      ),
    );
  }
}
