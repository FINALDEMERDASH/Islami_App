import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Quran/widgets/most_recent_card.dart';
import 'package:islami_app/presentation/screens/main_layout/tabs/Quran/widgets/sura_item.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 0.2,
          fit: BoxFit.cover,

          image: AssetImage(AssetsManager.quranTabBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AssetsManager.islamiLogo),
              buildSearchField(),
              SizedBox(height: 28),
              const Text(
                "Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.ofwhite,
                ),
              ),
              SizedBox(height: 10),
          
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        child: MostRecentCard(),
                      ),
                  itemCount: 7,
                ),
              ),
              const SizedBox(height: 11),
              const Text(
                "Suras List",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.ofwhite,
                ),
              ),
              const SizedBox(height: 14),
          
              buildSuralist(),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildSuralist(){
   return ListView.separated(
     physics: NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     separatorBuilder: (context, index) => Divider(
       color: Colors.white,
       thickness: 1,
       indent: 40,
       endIndent: 40,
     ),
     itemBuilder: (context, index) => SuraItem(),
     itemCount: 114,
   );
  }

  Widget buildSearchField() {
    return SizedBox(

      height: 40,
      child: TextField(
        decoration: InputDecoration(
          labelText: "Sura Name",
          labelStyle: TextStyle(fontSize: 16, color: ColorsManager.ofwhite),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorsManager.gold, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorsManager.gold, width: 1),
          ),
        ),
      ),
    );
  }
}
