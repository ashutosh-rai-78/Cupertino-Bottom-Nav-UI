import 'package:flutter/cupertino.dart';
class CupertinoSettingPage extends StatefulWidget {
  const CupertinoSettingPage({Key? key}) : super(key: key);

  @override
  State<CupertinoSettingPage> createState() => _CupertinoSettingPageState();
}

class _CupertinoSettingPageState extends State<CupertinoSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Setting Page"),
    );
  }
}
