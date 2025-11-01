import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';

class AboutPage extends StatelessWidget{
   AboutPage({super.key});
  final String aboutMe="Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus.Sed ornare sit amet lorem\n sed viverra. In vel urna quis libero viverra facilisis ut ac est.";
   List<String> skills= [
     "Flutter Development",
     "UI/UX Design",
     "API Integration",
     "Firebase Setup",
     "App Store Deployment",
   ];

  @override
  Widget build(BuildContext context){
    final isOdd = skills.length.isOdd;
    final displayCount = isOdd ? skills.length - 1 : skills.length;
    final isMobile = DeviceTypeUtil.isMobile(context);

    return SingleChildScrollView(
      child:Center(
        child:Padding(
          padding: EdgeInsetsGeometry.all(40),
          child:Column(
          children: [
            PageTitleView.pageTitleView("ABOUT ME"),

            SizedBox(height: 30,),
            Text(aboutMe,
              style: TextStyle(
                  color: AppColors.textBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  fontFamily: "Open Sans",
              ),
            ),


            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  border:const Border(
                    left: BorderSide(
                      color: AppColors.primaryBlack,
                      width: 1,
                    ),
                    right: BorderSide(
                      color: AppColors.primaryBlack,
                      width: 1,
                    ),
                  )
              ),
              child: Text("EXPLORE",
                style: TextStyle(
                    color: AppColors.textBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: "Montserrat",
                ),
              ),
            ),

            SizedBox(height: 30,),
            Image.asset(
              'assets/icons/separator.png',
              width: 120,
              height: 120,
            ),


            // 🔹 Grid for even part
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: displayCount,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile? 1: 2, // 2 columns
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: isMobile? 6:5, // adjust width:height ratio
              ),
              itemBuilder: (context, index) {
                return skillBox(title: skills[index].toString());
              },
            ),


            //  Centered last item if odd
            if (isOdd && !isMobile) ...[
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5, // centered half width
                  child: skillBox(title: skills.last.toString()),
                ),
              ),
            ],

              // For mobile, just put the last item normally below
              if (isOdd && isMobile) ...[
                const SizedBox(height: 14),
                skillBox(title: skills.last),
              ],

            SizedBox(height: 30,),
            Image.asset(
              'assets/icons/separator.png',
              width: 120,
              height: 120,
            ),

          ],
        ),)
    )
    );
  }

  Widget skillBox({required String title}){
    return Container(
      alignment: Alignment.center,
      // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryBlack, width: 1),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: "Montserrat",
          color: AppColors.textBlack,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }


}