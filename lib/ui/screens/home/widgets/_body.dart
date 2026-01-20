part of '../home.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  void initState() {
    print('rebuild');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final user = UserCubit.c(context, true);
    final userData = user.state.login.data;

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      padding: Space.sym(16, 0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(),
              Space.y.t12,
              _About(),
              Space.y.t08,
              _Contact(),
              Space.y.t08,
              _Skills(),
              Space.y.t08,
              _TechStack(),
              Space.y.t08,
              _PreferredRoles(),
              Space.y.t100,
            ],
          ),
        ),
      ),
    );
  }
}
