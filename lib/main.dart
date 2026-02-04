import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lensfolio/app.dart';
import 'package:lensfolio/services/cache/app_cache.dart';
import 'package:lensfolio/services/firebase/crash/crashlytics.dart';
import 'package:lensfolio/services/firebase/performance/performance.dart';
import 'package:lensfolio/services/flavor/flavor.dart';
import 'package:lensfolio/services/supabase/supabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await AppFlavor.init();

  await AppSupabase.init();

  await EnhancedCrashlytics.ins.init();
  await AppPerformance.ins.init();

  /// Caching
  await AppCache.ins.init();

  runApp(const Lensfolio());
}
