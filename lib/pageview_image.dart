import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jimrohn/indicator.dart';
import 'package:jimrohn/navigation_drawer.dart';
import 'package:jimrohn/appdata_image.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'display_image.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
var selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
appBar: AppBar(
  backgroundColor: Color(0xFF9DD1DF),
  title: Text('Jim Rohn Image'),
  actions: [
    PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
            value: 1,
            child: Text(
              'share',
              style: TextStyle(fontSize: 20),
            ))
      ],
      onSelected: (value) {
        if (value == 1) {
          _share();
        }
      },
    ),
  ],
),
body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
Padding(
  padding: const EdgeInsets.all(0.1),
  child:   Container(
  height: 350,
  width:600,
    child: PageView.builder(
    onPageChanged: (index){
    setState(() {
    selectindex = index;
    print(index);
    });
    },
        controller: PageController(viewportFraction: 0.7),
        itemCount: appDataImage.length,
        itemBuilder: (context, index) {
          var scale= selectindex ==index ? 1.0 : 0.7;
          return TweenAnimationBuilder(
            tween: Tween(begin: scale, end: scale),
            duration: Duration(milliseconds: 400),
            child: Displayimage(appDataImage: appDataImage[index]),
            builder: (context, value, child) {
              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
          );
        }
    ),

  ),
),
  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            appDataImage.length,
                (index) => Intagaration(
                isActive: selectindex == index ? true : false))
      ],
    ),
  )
],
),
    );
  }

_share() async {
  print('----Image');
  print(appDataImage[selectindex].image);
  ByteData imagebyte = await rootBundle.load(appDataImage[selectindex].image);
  final temp = await getTemporaryDirectory();
  final path = '${temp.path}/Jim Rohn 1.png';
  print(path);
  File(path).writeAsBytes(imagebyte.buffer.asUint8List());
  await Share.shareFiles([path],text:'Image Shared');
}
}

