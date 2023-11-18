import 'package:flutter/material.dart';
import 'package:imdb_localization/strings.g.dart';

class ImdbBottomBarNavigationBar extends StatefulWidget {
  const ImdbBottomBarNavigationBar({
    required this.pageController,
    super.key,
  });

  final PageController pageController;
  @override
  State<ImdbBottomBarNavigationBar> createState() => ImdbBottomBarNavigationBarState();
}

class ImdbBottomBarNavigationBarState extends State<ImdbBottomBarNavigationBar> {
  @override
  Widget build(BuildContext context) {
    var currentPageIndex = 0;
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPageIndex,
      onTap: (index){
        widget.pageController.jumpToPage(index);
        setState(() {
          currentPageIndex = index;
        });
      },
      items:  [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: context.t.main.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: context.t.main.search,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.slow_motion_video),
          label: context.t.main.video,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_pin),
          label: context.t.main.profile,
        ),
      ],
    );
  }
}
