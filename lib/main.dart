import 'package:flutter/cupertino.dart';

const lipsum =
    "Lorem Ipsum is simply dummy text of the printing and typesetting "
    "industry. Lorem Ipsum has been the industry's standard dummy text ever "
    "since the 1500s, when an unknown printer took a galley of type and "
    "scrambled it to make a type specimen book. It has survived not only five "
    "centuries, but also the leap into electronic typesetting, remaining "
    "essentially unchanged. It was popularised in the 1960s with the release "
    "of Letraset sheets containing Lorem Ipsum passages, and more recently "
    "with desktop publishing software like Aldus PageMaker including versions "
    "of Lorem Ipsum.";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void displayDialog() {
    print('displaying');
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Dialog Title'),
              content: const Text(lipsum),
              actions: [
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: new Text('Close'),
                  onPressed: Navigator.of(context).pop,
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Animation Text'),
      ),
      child: Center(
        child: CupertinoButton(
            child: const Text('Click me'), onPressed: displayDialog),
      ),
    );
  }
}
