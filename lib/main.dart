import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localizations_demo/localizations/app_localizations.dart';

final localeNotifier = ValueNotifier(const Locale('en'));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: localeNotifier,
      builder: (context, child) {
        return MaterialApp(
          title: 'Localizations Demo',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          locale: localeNotifier.value,
          supportedLocales: localeToLocalizations.keys,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.appTitle),
        actions: [
          PopupMenuButton<Locale>(
            onSelected: (locale) {
              localeNotifier.value = locale;
            },
            itemBuilder: (context) {
              return localeToLocalizations.entries.map((entry) {
                return PopupMenuItem<Locale>(
                  value: entry.key,
                  child: Text(entry.key.languageCode),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.loc.youHavePushedTheButtonThisManyTimes(_counter),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: context.loc.increment,
        label: Text(context.loc.increment),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
