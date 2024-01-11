import 'package:flutter/material.dart';
import 'package:jimrohn/display_text.dart';
import 'package:share_plus/share_plus.dart';

import 'navigation_drawer.dart';
import 'appdata_text.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText>  {
  var _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
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
            height:400,
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
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
            ),
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

