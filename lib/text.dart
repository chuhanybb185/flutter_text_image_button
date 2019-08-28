import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle blackStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black);//黑色样式
    TextStyle redStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.red);//红色样式
    return Scaffold(
        appBar: AppBar(
          title: Text('textDemo'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              '文本是视图系统中的常见控件，用来显示一段特定样式的字符串，，就比如 Android 里的 TextView，或是 iO...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.red,
              ),
            ),

            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(text: '文本是视图系统中的常见控件，用来显示一段特定样式的字符串，它用来显示一段特定样式的字符串，类似',style: redStyle),
                  TextSpan(text: 'Android', style: blackStyle),
                  TextSpan(text: '中的', style: redStyle),
                  TextSpan(text: 'TextView', style: blackStyle),
                ],
              ),
              textAlign: TextAlign.center,
            )
            
          ],
        ));
  }
}
