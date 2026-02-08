import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/helpers/validators.dart';
import 'package:lensfolio/router/routes.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/forms/forms.dart';
import 'package:lensfolio/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:lensfolio/utils/flash.dart';
import 'package:lensfolio/utils/setup_cubit.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part 'listeners/_login.dart';

part 'static/_form_data.dart';
part 'static/_form_keys.dart';

part 'widgets/_header.dart';

part '_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
    App.init(context);
    final screenState = _ScreenState.s(context);

    return Screen(
      formKey: screenState.formKey,
      initialFormValue: _FormData.initialValues(),
      keyboardHandler: true,
      belowBuilders: const [_LoginListener()],
      child: SafeArea(
        child: ScrollColumnExpandable(
          padding: Space.a.t20,
          crossAxisAlignment: .center,
          children: [
            _Header(),
            Space.y.t20,
            AppFormTextInput(
              name: _FormKeys.email,
              validators: Validators.email(),
              heading: 'Email',
              prefixIcon: LucideIcons.mail,
              placeholder: 'john.doe@example.com',
              keyboardType: TextInputType.emailAddress,
            ),
            Space.y.t20,
            AppFormTextInput(
              name: _FormKeys.password,
              heading: 'Password',
              placeholder: 'Enter your password',
              prefixIcon: LucideIcons.lock,
              validators: FormBuilderValidators.required(
                errorText: 'Password is required',
              ),
              obscureText: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style:
                      AppText.b1b.cl(AppTheme.c.primary) +
                      TextDecoration.underline,
                ),
              ),
            ),
            Space.y.t12,
            BlocBuilder<UserCubit, UserState>(
              buildWhen: (a, b) => a.login != b.login,
              builder: (context, state) {
                final loading = state.login.isLoading;
                return AppButton(
                  mainAxisSize: .max,
                  label: 'Login',
                  onTap: () => screenState.onSubmit(context),
                  state: loading ? .disabled : .def,
                );
              },
            ),
            Space.y.t20,
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  style: AppText.b1,
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: GestureDetector(
                        onTap: () => AppRoutes.register.push(context),
                        child: Text(
                          'Register',
                          style: AppText.b1b.cl(AppTheme.c.primary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
