import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lensfolio/app.dart';
import 'package:lensfolio/services/flavor/flavor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  AppFlavor.init();
  runApp(const Lensfolio());
}
