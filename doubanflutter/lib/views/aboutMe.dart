import 'package:flutter/material.dart';
import 'package:doubanflutter/views/aboutMeViews/aboutMeHeader.dart';
import 'package:doubanflutter/views/aboutMeViews/fansView.dart';
import 'package:doubanflutter/views/aboutMeViews/godInfoView.dart';
import 'package:doubanflutter/views/aboutMeViews/moreServiceView.dart';

class AboutMePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _AboutMePageState();
    }
}

class _AboutMePageState extends State<AboutMePage> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        backgroundColor: Color(0xF7F9FB),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            if (index == 0) {
              return AboutMeHeaderView();
            }
            if (index == 1) {
              return Container(
                color: Colors.white,
                child: FansView(),
              );
            }
            if (index == 2) {
              return GodInfoView();
            }
            if (index == 3) {
              return MoreServiceView(tips: "这个是我传过来的值, 哈哈哈");
            }
            return null;
          },
        ),
      );
    }
}

