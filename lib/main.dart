import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lensfolio/app.dart';
import 'package:lensfolio/services/firebase/crash/crashlytics.dart';
import 'package:lensfolio/services/firebase/performance/performance.dart';
import 'package:lensfolio/services/flavor/flavor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppFlavor.init();
  await Firebase.initializeApp();
  debugPrint('🔥 Firebase Project ID: ${Firebase.app().options.projectId}');
  debugPrint('🔥 Firebase App ID: ${Firebase.app().options.appId}');

  // print('Initialized firebase with name: ${Firebase.app().name}');

  // await EnhancedCrashlytics.ins.init();
  // await AppPerformance.ins.init();

  runApp(const Lensfolio());
}
