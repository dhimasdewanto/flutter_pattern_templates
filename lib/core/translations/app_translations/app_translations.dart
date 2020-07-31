import 'package:get/get.dart';

import '../languages/en_us.dart';
import '../languages/id_id.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": enUS,
        "id_ID": idID,
      };
}
