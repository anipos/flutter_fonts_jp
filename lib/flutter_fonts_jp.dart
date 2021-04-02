library flutter_fonts_jp;

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// Available fonts.
enum JapaneseFont {
  notoSansJPRegular,
}

/// Loads the given font as the default font of material app (named "Roboto").
Future<void> loadJapaneseFont({
  JapaneseFont font = JapaneseFont.notoSansJPRegular,
}) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load(_fontKeys[font]);
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

const _fontKeys = {
  JapaneseFont.notoSansJPRegular:
      'packages/flutter_fonts_jp/third_party/Noto_Sans_JP/NotoSansJP-Regular.otf',
};
