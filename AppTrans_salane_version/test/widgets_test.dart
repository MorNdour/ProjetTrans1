// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

//import 'package:authentifaction_app/main.dart';
//import 'package:authentifaction_app/screens/auth_screen.dart';
import 'package:authentifaction_app/screens/home_screen.dart';
import 'package:authentifaction_app/screens/overview_screen.dart';
import 'package:authentifaction_app/screens/splash_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
//import 'package:authentifaction_app/widgets/auth/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
//import 'package:authentifaction_app/main.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('add', () {
    testWidgets("HomeScreen", (WidgetTester tester) async {
      final mockObserver1 = MockNavigatorObserver();
      final mockObserver2 = MockNavigatorObserver();

      await tester.pumpWidget(MaterialApp(
        home: const Scaffold(
          body: HomeScreen(),
        ),
        navigatorObservers: [mockObserver1, mockObserver2],
      ));

      var container = find.byType(Container);
      expect(container, findsWidgets);

      var text = find.byType(Text);
      expect(text, findsWidgets);

      var elevatedButton = find.byType(ElevatedButton);
      expect(elevatedButton, findsWidgets);

      final titleFinder = find.text('Agritech,');
      final textFinder = find.text('Take great care  of your plants health. ');

      expect(titleFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);

      var loginButton = find.byKey(const Key('login'));
      await tester.pumpAndSettle();
      expect(loginButton, findsOneWidget);
      verify(mockObserver1.didPush(any, any));
      expect(find.byType(Container), findsWidgets);

      var signinButton = find.byKey(const Key('signin'));
      await tester.pump();
      expect(signinButton, findsOneWidget);
      verify(mockObserver2.didPush(any, any));
      expect(find.byType(Container), findsWidgets);
    });

    testWidgets('SplashScreen', (WidgetTester tester) async {
      //final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        // ignore: prefer_const_constructors
        MaterialApp(
          home: const SplashScreen(),
          //navigatorObservers: [mockObserver],
        ),
      );

      var scaffold = find.byType(Scaffold);
      expect(scaffold, findsWidgets);

      var text = find.byType(Text);
      expect(text, findsOneWidget);

      var center = find.byType(Center);
      expect(center, findsOneWidget);
    });

    testWidgets('Home1Screen', (WidgetTester tester) async {
      //final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        // ignore: prefer_const_constructors
        MaterialApp(
          home: const Home(),
          //navigatorObservers: [mockObserver],
        ),
      );

      var scaffold = find.byType(Scaffold);
      expect(scaffold, findsWidgets);

      var text = find.byType(Text);
      expect(text, findsOneWidget);

      var center = find.byType(Center);
      expect(center, findsOneWidget);

      var column = find.byType(Column);
      expect(column, findsOneWidget);
    });

    testWidgets('HistoryScreen', (WidgetTester tester) async {
      //final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        // ignore: prefer_const_constructors
        MaterialApp(
          home: const History(),
          //navigatorObservers: [mockObserver],
        ),
      );

      var scaffold = find.byType(Scaffold);
      expect(scaffold, findsWidgets);

      var text = find.byType(Text);
      expect(text, findsWidgets);

      var listView = find.byType(ListView);
      expect(listView, findsOneWidget);

      var container = find.byType(Container);
      expect(container, findsWidgets);

      var column = find.byType(Column);
      expect(column, findsWidgets);

      var image = find.byType(Image);
      expect(image, findsWidgets);

      var expanded = find.byType(Expanded);
      expect(expanded, findsWidgets);

      var divider = find.byType(Divider);
      expect(divider, findsWidgets);
    });

    testWidgets('TemperatureScreen', (WidgetTester tester) async {
      //final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        // ignore: prefer_const_constructors
        MaterialApp(
          home: const Temperature(),
          //navigatorObservers: [mockObserver],
        ),
      );

      var scaffold = find.byType(Scaffold);
      expect(scaffold, findsWidgets);

      var center = find.byType(Center);
      expect(center, findsOneWidget);

      var column = find.byType(Column);
      expect(column, findsWidgets);
    });

    testWidgets('HumidityScreen', (WidgetTester tester) async {
      await tester.pumpWidget(
        // ignore: prefer_const_constructors
        MaterialApp(
          home: const Humidity(),
        ),
      );

      var scaffold = find.byType(Scaffold);
      expect(scaffold, findsWidgets);

      var text = find.byType(Text);
      expect(text, findsOneWidget);

      var center = find.byType(Center);
      expect(center, findsOneWidget);

      var column = find.byType(Column);
      expect(column, findsOneWidget);
    });
  });
}
