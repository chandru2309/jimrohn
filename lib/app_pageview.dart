import 'package:flutter/material.dart';
import 'package:jimrohn/app_displaytext.dart';
import 'package:share_plus/share_plus.dart';

import 'appdata_text.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({super.key});

  @override
  State<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  var _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Jim Rohn Quotes',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Text(
                    'share',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
            onSelected: (value) {
              if (value == 1) {
                _share();
              }
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectIndex = index;
                    print(index);
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                itemCount: appDataText.length,
                itemBuilder: (contex, index) {
                  var scale = _selectIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: scale, end: scale),
                      duration: Duration(milliseconds: 400),
                      child: DisplayText(appDataText: appDataText[index]),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: scale,
                          child: child,
                        );
                      });
                  DisplayText(appDataText: appDataText[index]);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: new Text(
                (_selectIndex + 1).toString() +
                    '/' +
                    appDataText.length.toString(),
                style: TextStyle(color: Colors.black, fontSize: 25),
              )),
            ],
          )
        ],
      ),
    );

  }

  _share() {
    print('---share');
    print(appDataText[_selectIndex].text);
Share.share(appDataText[_selectIndex].text);
  }
}

