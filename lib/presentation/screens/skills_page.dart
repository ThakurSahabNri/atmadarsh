import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';

class SkillsPage extends StatelessWidget{
   SkillsPage({super.key});

   final Map<String, List<Skill>> skills = {
     "USING NOW": [
       Skill(skillIconPath: "assets/icons/icon-flutter.jpg",
           skillName: "Flutter"),
       Skill(skillIconPath: "assets/icons/icon-dart.png", skillName: "Dart"),
       Skill(skillIconPath: "assets/icons/icon-backend-integration.jpeg",
           skillName: "Backend Integration"),
       Skill(skillIconPath: "assets/icons/icon-android-native.jpeg",
           skillName: "Android Native"),
       Skill(skillIconPath: "assets/icons/icon-ui-ux.png", skillName: "UI/UX"),
     ],
     "LEARNING": [
       Skill(skillIconPath: "assets/icons/icon-swift.png", skillName: "Swift"),
       Skill(skillIconPath: "assets/icons/icon-machine-learning.png",
           skillName: "ML Integration"),
       Skill(skillIconPath: "assets/icons/icon-architecture.png",
           skillName: "Advanced App Architecture"),
     ],
     "OTHER SKILLS": [
       Skill(skillIconPath: "assets/icons/icon-project.png",
           skillName: "Project-Based Development"),
       Skill(skillIconPath: "assets/icons/icon-dev-tool.png",
           skillName: "Dev Tools"),
       Skill(skillIconPath: "assets/icons/icon-content-writing.png",
           skillName: "Content & Writing"),
     ]
   };

   // final List<String> skills=[
   //   "HTML5","CSS3","SASS","JAVASCRIPT",
   //   "HTML5","CSS3","SASS","JAVASCRIPT",
   //   "HTML5","CSS3","SASS","JAVASCRIPT",
   //   "HTML5","CSS3","SASS","JAVASCRIPT"
   // ];
   bool isMobile = false;

   @override
   Widget build(BuildContext context) {
     isMobile = DeviceTypeUtil.isMobile(context);

     return SingleChildScrollView(
         child: Center(
           child: Padding(
             padding: EdgeInsetsGeometry.all(40),
             child: Column(
               children: [

                 PageTitleView.pageTitleView("SKILLS"),

                 SizedBox(height: 50,),

                createSkillCategoriesSection()
                

               ],
             ),
           ),
         )
     );
   }

   Widget createSkillCategoriesSection() {
     return Column(
       children: skills.entries.map((entry) {
         return Container(
           padding: isMobile?EdgeInsets.only(left:90,right: 90):
             EdgeInsets.only(left: 200,right: 200),
           child: Column(
             crossAxisAlignment: isMobile
                 ? CrossAxisAlignment.center
                 : CrossAxisAlignment.start,
               children: [
                 Text(entry.key + ":",
                   style: TextStyles(
                       fontSize: 30,
                       textColor: AppColors.textBlack,
                       letterSpacing: 5
                   ).getBoldStyle(),
                 ),

                 SizedBox(height: 40,),

                 GridView.builder(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: entry.value.length,
                   padding: EdgeInsets.all(20),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: isMobile ? 1 : 4,
                     crossAxisSpacing: 12,   // ← reduce or increase here
                     mainAxisSpacing: 12,
                     childAspectRatio: 1.4// width/height ratio
                   ),
                   itemBuilder: (context, index) {
                     return buildSkill(skill: entry.value[index]);
                   },
                 )
               ],
           ),
         );
       }).toList(),
     );
   }
  

  Widget buildSkill({required Skill skill}){
     return Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
               color: AppColors.textWhite,
               height: isMobile?60:90,
               width: isMobile?60:90,
               child:  Image.asset(skill.skillIconPath,)
           ),
           SizedBox(height: 10,),
           Text(skill.skillName,
             textAlign: TextAlign.center,
             style:TextStyles(
                 fontSize: 24,
                 textColor:  AppColors.textBlack,
                 letterSpacing: 1.3
             ).getRegularStyle(),)
         ],
     );
  }
}

class Skill{
  String skillIconPath;
  String skillName;

  Skill({
    required this.skillIconPath,
   required this.skillName
  });
}