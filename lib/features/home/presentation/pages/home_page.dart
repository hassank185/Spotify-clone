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
          bottomNavigationBar: BottomNavigationBar(
            unselectedIconTheme: IconThemeData(color: AppColors.white),
              selectedIconTheme: IconThemeData(color: AppColors.white),
              selectedItemColor: AppColors.white,
              unselectedItemColor: AppColors.white,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book_sharp), label: 'Your Library'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add), label: 'Create'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.workspace_premium), label: 'Premium'),
              ]),
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
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: AppColors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          width: 160,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    AppImages.profileImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('add singer/song\n title here')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    AppImages.profileImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('add singer/song\n title here')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Your top mixes',
                    style: TextStyle(color: AppColors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SongsListView(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Recommended for today',
                    style: TextStyle(color: AppColors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SongsListView(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Popular radio',
                    style: TextStyle(color: AppColors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SongsListView(),


                ],
              ),
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
