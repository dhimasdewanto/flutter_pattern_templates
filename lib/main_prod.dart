import 'core/configs/env.dart';
import 'main_app.dart';

Future<void> main() async {
  await mainApp(Env.prod);
}
