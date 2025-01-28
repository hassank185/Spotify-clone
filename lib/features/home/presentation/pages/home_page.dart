import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_configs/assets/app_images.dart';
import 'package:spotify_clone/core/app_configs/theme/app_colors.dart';
import 'package:spotify_clone/features/home/presentation/pages/widgets/songs_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                color: AppColors.lightBlack,
                child: ListView(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(AppImages.profileImage)),
                      title: Text(
                        'Abdul Aziz',
                        style: TextStyle(color: AppColors.white),
                      ),
                      subtitle: Text(
                        'View profile',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                    Divider(
                      color: AppColors.grey,
                    ),
                    _listItem(
                        icon: Icons.add_circle_outline, title: 'Add account'),
                    _listItem(icon: Icons.flash_on_sharp, title: "What's new"),
                    _listItem(
                        icon: Icons.history_toggle_off_sharp, title: "Recents"),
                    _listItem(
                        icon: Icons.settings, title: "Settings and privacy "),
                  ],
                )),
          ),
          appBar: AppBar(
            backgroundColor: AppColors.black,
            leading: Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.blue,
                  ),
                  child: Center(
                      child: Text(
                    'A',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              );
            }),
          ),
          body: Container(padding: EdgeInsets.symmetric(horizontal: 10),
            color: AppColors.black,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your top mixes',
                  style: TextStyle(color: AppColors.white, fontSize: 24),
                ),
                SizedBox(height: 10,),
                Container(

                  width: double.infinity,
                  height: 150,
                  child: SongsListView()
                ),

              ],
            ),
          )),
    );
  }

  _listItem({required IconData icon, required String title}) {
    return ListTile(
      iconColor: AppColors.white,
      textColor: AppColors.white,
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}


