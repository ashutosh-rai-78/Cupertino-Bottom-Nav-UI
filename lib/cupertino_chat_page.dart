import 'package:flutter/cupertino.dart';
class CupertinoChatPage extends StatefulWidget {
  const CupertinoChatPage({Key? key}) : super(key: key);

  @override
  State<CupertinoChatPage> createState() => _CupertinoChatPageState();
}

class _CupertinoChatPageState extends State<CupertinoChatPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Chat Page"),
    );
  }
}
