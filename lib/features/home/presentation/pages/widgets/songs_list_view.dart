import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_configs/assets/app_images.dart';

class SongsListView extends StatelessWidget {
  const SongsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            color: Colors.red,
            height: 150,
            width: 150,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                      AppImages.profileImage,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    bottom: 2,
                    left: 0,
                    right: 0,
                    child: Text(
                      'Add some descriptions here',
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          );
        });
  }
}