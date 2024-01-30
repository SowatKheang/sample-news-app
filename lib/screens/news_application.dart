import 'package:flutter/material.dart';
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';
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
      builder: (BuildContext context, Orientation orietation,
          EScreenType screenType) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: const MaterialColor(4293011744, {
              50: Color(0xfffce9e8),
              100: Color(0xfff9d4d2),
              200: Color(0xfff3a8a5),
              300: Color(0xffed7d78),
              400: Color(0xffe8524a),
              500: Color(0xffe2261d),
              600: Color(0xffb51f17),
              700: Color(0xff871712),
              800: Color(0xff5a0f0c),
              900: Color(0xff2d0806)
            }),
          ),
          home: Builder(builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('News Application'),
              ),
              body: _buildScreen(),
              bottomNavigationBar: BottomNavigationBar(
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
                    icon: Icon(
                      Icons.newspaper,
                    ),
                    label: 'News',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                    ),
                    label: 'Favourite'
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }

  Widget _buildScreen() {
    if (pageIndex == 0) {
      return const NewsListScreen();
    }
    return const FavouriteScreen();
  }

}
