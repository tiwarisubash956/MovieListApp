import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final sl= GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => FirebaseAuth.instance);
  


}