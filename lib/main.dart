import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; //一个用于识别操作系统的工具库，其内的defaultTargetPlatform值可帮助我们识别操作系统
import 'common/common_theme.dart';
import 'widget/home.dart';
import 'widget/chat/chatScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 在main()设定每个页面的别称通过Navigator.pushNamed()跳转
      routes: <String , WidgetBuilder>{
        '/chat': (BuildContext context) => new ChatScreen(),
      },
      theme:
          defaultTargetPlatform == TargetPlatform.iOS ? androidTheme : IOSTheme,
      home: new HomePage(),
    );
  }
}
