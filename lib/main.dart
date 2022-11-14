import 'package:carrito_getx_02/domain/controller/controlcarrito.dart';
import 'package:carrito_getx_02/domain/controller/controlfirebase.dart';
import 'package:carrito_getx_02/domain/controller/controluser.dart';
import 'package:carrito_getx_02/domain/controller/controluserf.dart';
import 'package:carrito_getx_02/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAF0Qi1gFCLaaoCMf-NKBUckJF5l9iNj7Y",
              authDomain: "carrito-d4d4b.firebaseapp.com",
              projectId: "carrito-d4d4b",
              storageBucket: "carrito-d4d4b.appspot.com",
              messagingSenderId: "559421587405",
              appId: "1:559421587405:web:51604cfdadecb27c8e0e84"),
        )
      : await Firebase.initializeApp();
  Get.put(ConsultasController());
  Get.put(ControlCompras());
  Get.put(ControladorUser());
  Get.put(ControlAuthFirebase());
  runApp(const App());
}
