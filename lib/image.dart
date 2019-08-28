import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image all'),
      ),
      body: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            //FadeInImage提供了图片占位加载功能，支持在图片加载完成时淡入淡出视觉效果
            placeholder: 'assets/images/timg.gif', //图片占位
            image:
                'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3896829474,516712111&fm=26&gp=0.jpg',
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          Image.asset(
            'assets/images/binbin.jpg',
            width: 200,
            height: 200,
          ),
          CachedNetworkImage(//除了支持图片缓存外，还提供了比Fadelnimage更加强大的加载过程占位与加载错误占位，可以支持比用图片占位更为灵活的自定义控件占位
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
