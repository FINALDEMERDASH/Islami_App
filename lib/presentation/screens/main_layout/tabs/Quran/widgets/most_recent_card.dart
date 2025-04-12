import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';

class MostRecentCard extends StatelessWidget {
  const MostRecentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(

        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text("Al-Fatiha", style: TextStyle(fontSize: 24,
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w500),),
                Text("الفاتحه", style: TextStyle(fontSize: 24,
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w500),),
                Text("7 Verses", style: TextStyle(fontSize: 14,
                    color: ColorsManager.black,
                    fontWeight: FontWeight.w500),),

              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Image.asset(AssetsManager.mostRecentSuraCard)),
        ],
      ),

    );
  }
}
