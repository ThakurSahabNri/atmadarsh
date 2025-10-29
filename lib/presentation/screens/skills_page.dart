import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
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
    return SingleChildScrollView(
      child:Center(
        child:Padding(
          padding: EdgeInsetsGeometry.all(40),
          child: Column(
          children: [

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
                color: AppColors.darkGrey,
                border: Border.all(
                  color: AppColors.primaryBlack, // subtle border
                  width: 4,
                )
            ),
            child: Text("SKILLS",
              style: TextStyle(
                  color: AppColors.textBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  letterSpacing: 10
              ),
            ),
          ),

            SizedBox(height: 50,),
            createSkillSection(),


        ],
      ),
    ),
    )
    );
  }
  Widget createSkillSection(){
     return GridView.builder(
         physics: const NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemCount: skills.length,
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 4, // 2 columns
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           childAspectRatio: 3, // adjust width:height ratio
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