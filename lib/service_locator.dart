import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// Service locator - global variable
final GetIt locator = GetIt.instance;

/// Register any services you have with GetIt
Future<void> setupServiceLocator() async {
  //! Features - feature_name
  // Bloc
  // Use cases
  // Repository
  // Data sources

  //! Core

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
  locator.registerLazySingleton(() => http.Client());
  locator.registerLazySingleton(() => DataConnectionChecker());
}