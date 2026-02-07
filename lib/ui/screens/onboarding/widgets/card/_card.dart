part of '../../onboarding.dart';

class _Card extends StatelessWidget {
  final String category;
  const _Card({required this.category});

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);
    final items = screenState.techStacks[category] ?? [];
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppTheme.c.text.withValues(alpha: 0.1)),
      ),
      child: ExpansionTile(
        title: Text(category, style: AppText.b1b),
        shape: const Border(),
        collapsedShape: const Border(),
        childrenPadding: const EdgeInsets.all(16).copyWith(top: 0),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (items.isNotEmpty) ...[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: items
                  .map(
                    (e) => Chip(
                      label: Text(e),
                      onDeleted: () => screenState.removeTechStack(category, e),
                    ),
                  )
                  .toList(),
            ),
            Space.y.t16,
          ],
          Row(
            children: [
              Expanded(
                child: AppFormTextInput(
                  name: '${_FormKeys.stack}_$category',
                  placeholder: 'Add technology...',
                ),
              ),
              Space.x.t12,
              AppButton(
                icon: LucideIcons.plus,
                onTap: () => screenState.addTechStack(category),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
