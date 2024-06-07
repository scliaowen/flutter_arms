import 'package:arms_core/base/base_repository.dart';

class LoginRepository extends BaseRepository {
  Future<bool> login() async {
    return Future.delayed(const Duration(seconds: 2), () => true);
  }
}