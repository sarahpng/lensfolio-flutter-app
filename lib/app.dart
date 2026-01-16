import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lensfolio/blocs/jobs/cubit.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/provider/app.dart';
import 'package:lensfolio/router/router.dart';
import 'package:lensfolio/router/routes.dart';
import 'package:lensfolio/services/route_logger/route_logger.dart';
import 'package:provider/provider.dart';

class Lensfolio extends StatefulWidget {
  const Lensfolio({super.key});

  @override
  State<Lensfolio> createState() => _LensfolioState();
}

class _LensfolioState extends State<Lensfolio> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return MultiProvider(
      providers: [
        // blocs
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => JobsCubit()),

        // providers
        Provider(create: (_) => Connectivity()),
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: Consumer<AppProvider>(
        builder: (context, state, child) {
          return MaterialApp(
            title: 'Lensfolio',
            navigatorKey: navigator,
            themeMode: state.themeMode,
            theme: materialLightTheme,
            darkTheme: materialDarkTheme,
            debugShowCheckedModeBanner: false,
            navigatorObservers: [RouteLogger()],
            routes: appRoutes,
            onGenerateRoute: onGenerateRoutes,
            initialRoute: AppRoutes.login,
          );
        },
      ),
    );
  }
}
