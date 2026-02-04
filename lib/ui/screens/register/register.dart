import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/helpers/validators.dart';
import 'package:lensfolio/router/routes.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/forms/forms.dart';
import 'package:lensfolio/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:lensfolio/utils/flash.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';
part 'listeners/_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      belowBuilders: const [_RegisterListener()],
      child: SafeArea(
        child: ScrollColumnExpandable(
          padding: Space.a.t20,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Register', style: AppText.h2b),
            Space.y.t04,
            Text(
              'Welcome back to Lensfolio. Please enter your email and password to continue.',
              style: AppText.b1,
            ),
            Space.y.t32,
            AppFormTextInput(
              name: _FormKeys.email,
              validators: Validators.email(),
              heading: 'Email',
              placeholder: 'john.doe@example.com',
              keyboardType: TextInputType.emailAddress,
            ),
            Space.y.t20,
            AppFormTextInput(
              name: _FormKeys.password,
              heading: 'Password',
              placeholder: 'Enter your password',
              validators: FormBuilderValidators.required(
                errorText: 'Password is required',
              ),
              obscureText: true,
            ),
            Space.y.t28,
            BlocBuilder<UserCubit, UserState>(
              buildWhen: (a, b) => a.login != b.login,
              builder: (context, state) {
                final loading = state.login.isLoading;
                return AppButton(
                  label: 'Register',
                  onTap: () => screenState.onSubmit(context),
                  state: loading ? .disabled : .def,
                );
              },
            ),
            Space.y.t20,
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Already have an account? ",
                  style: AppText.b1,
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: GestureDetector(
                        onTap: () => ''.pop(context),
                        child: Text(
                          'Login',
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
