import 'package:flutter/material.dart';
import 'package:flutter_news_application/core/extension/device_helper_extension.dart';
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';
import '../core/theme/news_theme.dart';
import '../modules/news/screens/favourite_screen.dart';
import '../modules/news/screens/news_list_screen.dart';

class NewsApplication extends StatefulWidget {
  const NewsApplication({super.key});

  @override
  State<NewsApplication> createState() => _NewsApplicationState();
}

class _NewsApplicationState extends State<NewsApplication> {

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveUIWidget(
      builder: (BuildContext context, Orientation orietation, EScreenType screenType) {
        return MaterialApp(
          theme: newsAppTheme,
          home: Builder(builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('News Application'),
              ),
              body: _buildBody(),
              bottomNavigationBar: Visibility(
                visible: DeviceHelper.getInstance().isMobile,
                child: BottomNavigationBar(
                  currentIndex: pageIndex,
                  selectedItemColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Colors.grey,
                  selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  onTap: (int index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon( Icons.newspaper),
                      label: 'News',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon( Icons.favorite,),
                      label: 'Favourite'
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }

  Widget _buildBody() {
    if (DeviceHelper.getInstance().isMobile) {
      return _buildScreen();
    }
    return Row(
      children: [
        NavigationRail(
          selectedIndex: pageIndex,
          onDestinationSelected: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.newspaper),
              label: Text('')
            ),
            NavigationRailDestination(
              icon: Icon(Icons.favorite),
              label: Text('')
            ),
          ],
        ),
        Expanded(
          child: _buildScreen()
        ),
      ],
    );
  }

  Widget _buildScreen() {
    if (pageIndex == 0) {
      return const NewsListScreen();
    }
    return const FavouriteScreen();
  }

}
