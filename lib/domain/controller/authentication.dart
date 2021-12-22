import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'authentication_controller.dart';

class AuthController extends GetxController {
  // Observables
  final _authenticated = false.obs;
  final _currentUser = Rx<User?>(null);
  late AuthenticationController _manager;

  set currentUser(User? userAuth) {


    _currentUser.value = userAuth;
    _authenticated.value = userAuth != null;

  }

  set authManagement(AuthenticationController manager) {
    _manager = manager;
  }

  // Reactive Getters
  RxBool get reactiveAuth => _authenticated;
  Rx<User?> get reactiveUser => _currentUser;

  // Getters
  bool get authenticated => _authenticated.value;
  User? get currentUser => _currentUser.value;

  AuthenticationController get manager => _manager;
}
