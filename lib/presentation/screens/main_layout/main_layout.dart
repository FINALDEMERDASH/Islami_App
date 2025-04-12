import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Hadith/hadtih_tab.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Quran/Quran_tab.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Sebha/sebha_tab.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Time/Prayer_time_tab.dart';

import 'package:islami_app/presentation/screens/main_layout/tabs/radio/radio_tab.dart';

class MainLayout extends StatefulWidget {
   MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<Widget> tabs=[
    Quran(),
    Hadtih(),
    Sebha(),
    RadioTab(),
    PrayerTime(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(colors: [ColorsManager.black.withValues(alpha: 0.7,),ColorsManager.black]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:tabs[
            selectedIndex
          ],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (newTabIndex){
              setState((){
                selectedIndex = newTabIndex;
              });
            },
            backgroundColor: ColorsManager.gold,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: ColorsManager.black,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(AssetsManager.quranIcon),
                ),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: "Hadtih",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.timeIcon)),
                label: "Prayes",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
