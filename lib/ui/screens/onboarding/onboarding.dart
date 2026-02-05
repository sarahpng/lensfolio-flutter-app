import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/forms/forms.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

// part '_state.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';

part 'widgets/_contacts.dart';
part 'widgets/_skills.dart';
part 'widgets/_preferred_roles.dart';

part '_state.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return Screen(
      formKey: screenState.formKey,
      keyboardHandler: true,
      initialFormValue: _FormData.initialValues(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () => screenState.onBack(context),
                icon: const Icon(LucideIcons.arrow_left),
              ),
            ),
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: screenState.progress),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                backgroundColor: AppTheme.c.primary.withValues(alpha: 0.2),
                valueColor: AlwaysStoppedAnimation(AppTheme.c.primary),
              ),
            ),
            Expanded(
              child: PageView(
                controller: screenState.pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: screenState.onPageChanged,
                children: const [_Contacts(), _Skills(), _PreferredRoles()],
              ),
            ),
            Padding(
              padding: Space.a.t20,
              child: Row(
                children: [
                  if (screenState.currentPage != 2)
                    AppButton(
                      label: 'Skip',
                      style: AppButtonStyle.transparent,
                      onTap: () => screenState.onNext(context),
                    ),
                  Space.x.t08,
                  Expanded(
                    child: AppButton(
                      label: screenState.currentPage == 2
                          ? 'Finish'
                          : 'Continue',
                      onTap: () => screenState.onNext(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
