import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_configs/assets/app_images.dart';
import 'package:spotify_clone/core/app_configs/theme/app_colors.dart';

class SongsListView extends StatelessWidget {
  const SongsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 150,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              width: 150,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: ClipRRect(borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          AppImages.profileImage,
                          fit: BoxFit.cover,
                        ),
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
          }),
    );
  }
}