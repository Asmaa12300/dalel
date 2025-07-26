import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/sevices/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dalel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/dalel_app.dart';
import 'core/functions/check_state_changes.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setUpServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(Dalel());
}


