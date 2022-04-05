import 'package:flutter/material.dart';
import 'package:my_assistant/theme/images.dart';

class AvatarUser extends StatelessWidget {
  final String image;
  const AvatarUser({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ClipOval(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.grey.shade200,
        child: FadeInImage.assetNetwork(
          image: image,
          placeholder: ImagesApp.emptyProfile,
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
          imageErrorBuilder:(context, error, stackTrace) {
            print(error);
            return Image.asset(ImagesApp.emptyProfile);
          }, 

        ),
      ),
    ));
  }
}
