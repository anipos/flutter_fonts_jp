import 'package:flutter/material.dart';
import 'package:flutter_fonts_jp/flutter_fonts_jp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('golden test', (WidgetTester tester) async {
    await loadJapaneseFont();
    await tester.pumpWidget(App());
    await expectLater(find.byType(App), matchesGoldenFile('app.png'));
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('日本語'),
              Text('English'),
            ],
          ),
        ),
      ),
    );
  }
}
