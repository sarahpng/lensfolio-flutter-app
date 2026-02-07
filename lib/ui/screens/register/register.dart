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
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';
part 'listeners/_register.dart';
part 'widgets/_header.dart';

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
      padding: Space.a.t20,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => ''.pop(context),
                  icon: Icon(LucideIcons.arrow_left),
                ),
              ),
              _Header(),
              Space.y.t20,
              AppFormTextInput(
                name: _FormKeys.fullName,
                validators: FormBuilderValidators.fileName(),
                heading: 'Full Name',
                prefixIcon: LucideIcons.user,
                placeholder: 'user',
                keyboardType: TextInputType.text,
              ),
              Space.y.t20,
              AppFormTextInput(
                name: _FormKeys.email,
                validators: Validators.email(),
                prefixIcon: LucideIcons.mail,
                heading: 'Email',
                placeholder: 'john.doe@example.com',
                keyboardType: TextInputType.emailAddress,
              ),
              Space.y.t20,
              AppFormTextInput(
                name: _FormKeys.password,
                heading: 'Password',
                prefixIcon: LucideIcons.lock,
                placeholder: 'Enter your password',
                validators: FormBuilderValidators.required(
                  errorText: 'Password is required',
                ),
                obscureText: true,
              ),
              Space.y.t20,
              AppFormTextInput(
                name: _FormKeys.confirmPassword,
                heading: 'Confirm Password',
                placeholder: 'Enter your password',
                prefixIcon: LucideIcons.lock,
                validators: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Password is required',
                  ),
                  Validators.match(
                    () =>
                        screenState
                                .formKey
                                .currentState
                                ?.fields[_FormKeys.password]
                                ?.value
                            as String?,
                    errorText: 'Passwords do not match',
                  ),
                ]),
                obscureText: true,
              ),
              Space.y.t28,
              BlocBuilder<UserCubit, UserState>(
                buildWhen: (a, b) => a.verify != b.verify,
                builder: (context, state) {
                  final loading = state.verify.isLoading;
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
      ),
    );
  }
}
