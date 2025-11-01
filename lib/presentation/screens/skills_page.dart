import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';

class SkillsPage extends StatelessWidget{
   SkillsPage({super.key});

   final List<String> skills=[
     "HTML5","CSS3","SASS","JAVASCRIPT",
     "HTML5","CSS3","SASS","JAVASCRIPT",
     "HTML5","CSS3","SASS","JAVASCRIPT",
     "HTML5","CSS3","SASS","JAVASCRIPT"
   ];


  @override
  Widget build(BuildContext context){
    final isMobile = DeviceTypeUtil.isMobile(context);

    return SingleChildScrollView(
      child:Center(
        child:Padding(
          padding: EdgeInsetsGeometry.all(40),
          child: Column(
          children: [

            PageTitleView.pageTitleView("SKILLS"),

            SizedBox(height: 50,),
            createSkillSection(isMobile),


        ],
      ),
    ),
    )
    );
  }
  Widget createSkillSection(bool isMobile){
     return GridView.builder(
         physics: const NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemCount: skills.length,
         gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: isMobile?2:4, // 2 columns
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           childAspectRatio: isMobile?4:3, // adjust width:height ratio
         ),
         itemBuilder: (context,index){
           return skillSection(title: skills[index]);
     }
     );
  }
  Widget skillSection({required String title}){
     return Column(
       children: [
         Icon(
           Icons.work,
           color: AppColors.primaryBlack,
         ),
         SizedBox(height: 10,),
         Text(title,
         style: TextStyle(
           fontFamily: "Montserrat",
           fontSize: 24,
           color: AppColors.textBlack
         ),)
       ],
     );
  }
}