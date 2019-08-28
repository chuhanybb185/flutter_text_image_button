import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Button Demo'
        ),
      ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(
            onPressed: ()=>print('FloatingActionButton pressed'), child: Text(
              'Btn',
            ),
          ),
          FlatButton(onPressed: ()=>print('FlatButton'),child: Text(
            'Btn'
          ),),
          RaisedButton(onPressed: ()=>print('RaisedButton'),child: Text(
            'Btn'
          ),),
          FlatButton(//按钮样式定制
            color: Colors.yellow,
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),//斜切的矩形边界
            colorBrightness: Brightness.light,//确保文字按钮为深色
            onPressed: ()=>print('FlatButton pressed'),
            child: Row(
              children: <Widget>[
                Icon(Icons.add),
                Text('Add'),
              ],
            ),
          )
        ],
      ),
    );

  }
}