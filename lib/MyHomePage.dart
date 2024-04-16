import 'package:flutter/material.dart';
import 'package:localapp/AppLocalizations.dart';
import 'package:localapp/Setting.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Setting())),
          icon: const Icon(Icons.settings),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "HomePage".tr(context),
          style: const TextStyle(fontSize: 24, fontFamily: "Cairo"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'aa'.tr(context),
              style: const TextStyle(fontSize: 24, fontFamily: "Cairo"),
            ),
            Text(
              'This text is not translet',
              style: const TextStyle(fontSize: 24, fontFamily: "Cairo"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("afasf"),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
