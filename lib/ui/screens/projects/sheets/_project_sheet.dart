part of '../projects.dart';

class _ProjectSheet extends StatelessWidget {
  const _ProjectSheet();

  @override
  Widget build(BuildContext context) {
    return AppModal(
      expanded: false,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          Text('Add New Project', style: AppText.h1b),
          Space.y.t24,

          // Project Title
          Text('Project Title', style: AppText.b1b),
          Space.y.t08,
          AppFormTextInput(placeholder: 'My Awesome Project', name: 'title'),
          Space.y.t20,

          // Description
          Text('Description', style: AppText.b1b),
          Space.y.t08,
          AppFormTextInput(
            placeholder: 'Describe your project...',
            maxLines: 4,
            name: 'description',
          ),
          Space.y.t20,

          // Technologies Section
          Text('Technologies', style: AppText.b1b),
          Space.y.t08,
          Row(
            children: [
              const Expanded(
                child: AppFormTextInput(
                  placeholder: 'e.g., React',
                  name: 'technologies',
                ),
              ),
              Space.x.t12,
              AppButton(
                label: 'Add',
                onTap: () {}, // Logic to add to a List<String>
                style: AppButtonStyle.primaryBorder,
              ),
            ],
          ),
          Space.y.t20,

          // Live URL
          Text('Live URL (optional)', style: AppText.b1b),
          Space.y.t08,
          AppFormTextInput(
            placeholder: 'https://myproject.com',
            name: 'liveUrl',
          ),
          Space.y.t20,

          // GitHub URL
          Text('GitHub URL (optional)', style: AppText.b1b),
          Space.y.t08,
          AppFormTextInput(
            name: 'githubUrl',
            placeholder: 'https://github.com/username/repo',
          ),
          Space.y.t32,

          // Save Button
          AppButton(
            label: 'Save Project',
            icon: LucideIcons.save,
            onTap: () {
              // This data will map to your 'user' table skills or a separate projects table
            },
          ),
        ],
      ),
    );
  }
}
