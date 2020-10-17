import 'package:pet_finder/data/User.dart';
import 'package:pet_finder/data/repositories/user.api.services.dart';


class Injector {
  static final Injector _singleton = new Injector._internal();

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  UserRepository get userRepository => new UserApiRepository();

}