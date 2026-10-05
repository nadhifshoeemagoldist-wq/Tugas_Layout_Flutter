import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_layout_flutter/main.dart';

void main() {
  testWidgets('Menampilkan profil praktikan dengan benar', (WidgetTester tester) async {
    // Build app dan jalankan frame
    await tester.pumpWidget(const MyApp());

    // Memastikan nama dan NIM muncul di layar
    expect(find.text('Nadhif Shoeema Goldist'), findsOneWidget);
    expect(find.text('20240801085'), findsOneWidget);
    expect(find.text('135'), findsOneWidget);
  });
}
