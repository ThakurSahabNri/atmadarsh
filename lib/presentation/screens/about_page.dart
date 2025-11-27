import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';

class AboutPage extends StatelessWidget{
   AboutPage({super.key});
  final String aboutMe="Flutter developer with hands-on experience in CRMnext, AI features, Firebase, and scalable UI components. I love creating\n elegant solutions and building apps that are both powerful and beautifully designed.";
   List<WorkOffer> workOfferList= [
     WorkOffer(
       workIconPath: "assets/icons/icon-development.png",
       workTitle: "Flutter App Development",
       workDescription:"Building fast, scalable, and polished mobile apps using Flutter.\nClean architecture, reusable components, and production-ready performance."
     ),
     WorkOffer(
         workIconPath: "assets/icons/icon-design.png",
         workTitle: "UI/UX Design",
         workDescription:"Designing modern, intuitive, and user-focused app interfaces.\nReusable widgets and smooth user flows that elevate the overall experience."
     ),
     WorkOffer(
         workIconPath: "assets/icons/icon-maintenance.png",
         workTitle: "API Integration & Backend Connectivity",
         workDescription:"Seamless integration of REST APIs and secure data workflows.\nOptimized communication between frontend and backend systems."
     ),
     WorkOffer(
         workIconPath: "assets/icons/icon-maintenance.png",
         workTitle: "Firebase Setup",
         workDescription:"End-to-end Firebase integration for modern app features.\nAuth, database, analytics, and cloud services tailored to your app."
     ), WorkOffer(
         workIconPath: "assets/icons/icon-maintenance.png",
         workTitle: "App Store Deployment & Release",
         workDescription:"Managing complete release workflows for Play Store & App Store.\nSigning, builds, platform fixes, and smooth app publishing."
     ),
   ];
   bool isMobile= false;

  @override
  Widget build(BuildContext context){
    final isOdd = workOfferList.length.isOdd;
    final displayCount = isOdd ? workOfferList.length - 1 : workOfferList.length;
      isMobile = DeviceTypeUtil.isMobile(context);

    return SingleChildScrollView(
      child:Center(
        child:Padding(
          padding: EdgeInsetsGeometry.all(40),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              textAlign: TextAlign.center,
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


            Padding(
              padding: EdgeInsetsGeometry.only(left: 80,right: 80),
              child: Column(
                children: [
                  // 🔹 Grid for even part
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
                    itemCount: displayCount,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isMobile? 1: 2, // 2 columns
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: isMobile? 6:3.2, // adjust width:height ratio
                    ),
                    itemBuilder: (context, index) {
                      return skillBox(work: workOfferList[index]);
                    },
                  ),


                  //  Centered last item if odd
                  if (isOdd && !isMobile) ...[
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5, // centered half width
                        child: skillBox(work:workOfferList.last),
                      ),
                    ),
                  ],

                  // For mobile, just put the last item normally below
                  if (isOdd && isMobile) ...[
                    const SizedBox(height: 14),
                    skillBox(work: workOfferList.last),
                  ],
                ],
              ),
            ),



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

  Widget skillBox({required WorkOffer work}){
    return  Container(
       padding: EdgeInsets.all(30),
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.horizontal,
                // alignment: WrapAlignment.end,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: -20.0,
                children: [
                  Image.asset(work.workIconPath,
                    width: isMobile?45:60,
                    height: isMobile?45:60,),

                  Text(work.workTitle,
                      style:TextStyles(
                        textColor: AppColors.textBlack,
                        fontSize: isMobile?17:22,
                      ).getBoldStyle())
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 40) ,
                child: Text(work.workDescription,
                    style: TextStyles(
                      textColor: AppColors.textBlack,
                      fontSize: isMobile?13: 14,
                    ).getRegularStyle(),
                    textAlign: TextAlign.start),
              )

            ]
        )
    );
  }


}

class WorkOffer{
  String workIconPath;
  String workTitle;
  String workDescription;
  WorkOffer({
    this.workIconPath= "assets/icons/icon-maintenance.png",
    required this.workTitle,
    required this.workDescription
});
}