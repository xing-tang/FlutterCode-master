import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//设置最大的滚动距离
const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _bannerUrls = [
    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=835931134,3427191482&fm=26&gp=0.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567526594955&di=afca362f472315bbf18e7e210fa5a114&imgtype=0&src=http%3A%2F%2Fpic4.zhimg.com%2Fv2-f978f5f8fb08ae4d959fe96858fbae1a_1200x500.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567525891498&di=9256e71db8a69748f665cc859cb3505b&imgtype=0&src=http%3A%2F%2Fimg8.zol.com.cn%2Fbbs%2Fupload%2F13484%2F13483726_0800.jpg",
  ];
  double appBarAlpha = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: NotificationListener(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification &&
                  scrollNotification.depth == 0) {
                //滚动且是列表滚动的时候
                _onScroll(scrollNotification.metrics.pixels);
              }
            },
            child: ListView(
              children: <Widget>[
                Container(
                  height: 200.0,
                  child: Swiper(
                    itemCount: _bannerUrls.length,
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        _bannerUrls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    pagination: SwiperPagination(),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: ListTile(
                    title: Text("来吧 , 一起加入Flutter学习之旅！"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Opacity(
          opacity: appBarAlpha,
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("首页"),
              ),
            ),
          ),
        )
      ],
    ));
  }

  void _onScroll(offset) {
    double tempAppBarAlpha = offset / APPBAR_SCROLL_OFFSET;
    if (tempAppBarAlpha < 0) {
      tempAppBarAlpha = 0;
    } else if (tempAppBarAlpha > 1) {
      tempAppBarAlpha = 1;
    }
    setState(() {
      appBarAlpha = tempAppBarAlpha;
    });
    print(appBarAlpha);
  }
}
