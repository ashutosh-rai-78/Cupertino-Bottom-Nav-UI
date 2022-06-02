import 'package:cupertino_ui/cupertino_chat_page.dart';
import 'package:cupertino_ui/cupertino_setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 1 <-- SEE HERE
    return CupertinoApp(
      home: MyAppM()
    );
  }
}

class MyAppM extends StatefulWidget {
  const MyAppM({Key? key}) : super(key: key);

  @override
  State<MyAppM> createState() => _MyAppMState();
}

class _MyAppMState extends State<MyAppM> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      // 2 <-- SEE HERE
      tabBar: CupertinoTabBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          // 3 <-- SEE HERE
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'Settings'),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
          // 4 <-- SEE HERE
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text('Calls'),
                  ),
                  child: Center(child: Text('Calls')));
            });
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoChatPage();
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoSettingPage();
              },
            );
            break;
        }
        return returnValue;
      },

    );
  }
}
