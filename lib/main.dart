import 'package:device_info/stateNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [
            Switch(
              value: Provider.of<AppStateNotifier>(context).isDark,
              onChanged: (darkMode){
                Provider.of<AppStateNotifier>(context).updateTheme(darkMode);
              },
            )
          ],
        ),
      ),
    );
  }
}