import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/router/routes.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/forms/forms.dart';
import 'package:lensfolio/utils/flash.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

// part '_state.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';

part 'pages/_contacts.dart';
part 'pages/_skills.dart';
part 'pages/_preferred_roles.dart';
part 'pages/_tech_stack.dart';

part 'widgets/card/_card.dart';

part 'listeners/_onboarding.dart';

part '_state.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(initialData: arguments),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);
    final initialValues = {..._FormData.initialValues()};
    if (screenState.initialData != null) {
      initialValues.addAll(screenState.initialData!);
    }

    return Screen(
      formKey: screenState.formKey,
      keyboardHandler: true,
      initialFormValue: initialValues,
      belowBuilders: [const _OnBoardingListener()],
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
                children: const [
                  _Contacts(),
                  _Skills(),
                  _TechStack(),
                  _PreferredRoles(),
                ],
              ),
            ),
            Padding(
              padding: Space.a.t20,
              child: AppButton(
                label: screenState.currentPage > 2 ? 'Finish' : 'Continue',
                onTap: () => screenState.onNext(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
