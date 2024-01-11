import 'package:flutter/cupertino.dart';
import 'package:jimrohn/appdata_image.dart';

class Displayimage extends StatelessWidget {
final AppDataImage appDataImage;
  const Displayimage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 400,
margin: EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(30),
image:DecorationImage(image: AssetImage(appDataImage.image),
    fit: BoxFit.cover
      ),
      ),
    );
  }
}
