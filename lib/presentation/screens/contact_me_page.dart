import 'package:flutter/material.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/text_editing_control.dart';
import 'package:atmadarsh/presentation/widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMePage extends StatelessWidget{
   ContactMePage({super.key});
   TextEditingController nameTextEditingController=TextEditingController();
   TextEditingController emailTextEditingController=TextEditingController();
   TextEditingController numberTextEditingController=TextEditingController();
   TextEditingController messageTextEditingController=TextEditingController();
   final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context){
    String aboutMe="Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem\n sed viverra. In vel urna quis libero viverra facilisis ut ac est.";
    return SingleChildScrollView(
        child: Center(
            child:Column(
            children: [
              SizedBox(height: 40,),

              PageTitleView.pageTitleView("CONTACT"),

              SizedBox(height: 30,),

              Text(aboutMe,
                style: TextStyles(textColor: AppColors.textBlack,
                    fontSize: 15,
                    fontFamily: "Open Sans").getRegularStyle(),
                textAlign: TextAlign.center,),

              Image.asset(
                'assets/icons/separator.png',
                width: 120,
                height: 100,
              ),


              _buildContactFields(),

              SizedBox(height: 24,),

             GestureDetector(
               onTap: (){},
               child: Container(
                 decoration: BoxDecoration(
                     border: Border(
                         left: BorderSide(
                           color: AppColors.primaryBlack,
                           width: 2,
                         ),
                         right: BorderSide(
                           color: AppColors.primaryBlack,
                           width: 2,
                         )
                     )
                 ),
                 child: Padding(padding: EdgeInsets.only(left: 14,right: 14),
                     child:Text("SUBMIT",
                       style: TextStyles().getBoldStyle(),)),
               ),
             ),

              SizedBox(height: 24,),

            _buildFooter(context)

            ],
          ),
        )
    );
  }

  Widget _buildContactFields(){
    return Column(
      children: [
        TextEditingControl(
          textEditingController: nameTextEditingController,
          maxLine: 1,
          textType: "Text",
          isMandatory: true,
          hintText: "ENTER YOUR NAME*",
        ),

        SizedBox(height: 20,),

        TextEditingControl(
          textEditingController: emailTextEditingController,
          maxLine: 1,
          textType: "Email",
          isMandatory: true,
          hintText: "ENTER YOUR EMAIL*",
        ),

        SizedBox(height: 20,),

        TextEditingControl(
          textEditingController: numberTextEditingController,
          maxLine: 1,
          textType: "Number",
          isMandatory: false,
          hintText: "PHONE NUMBER",
        ),
        //
        SizedBox(height: 20,),

        TextEditingControl(
          textEditingController: messageTextEditingController,
          maxLine: 5,
          isMandatory: true,
          hintText: "YOUR MESSAGE*",
        ),
      ],
    );
   }

   Widget _buildFooter(BuildContext buildContext){
    Color footerBackgroundColor=AppColors.footerBackgroundColor;
    return Container(
      width: double.infinity,
      color: footerBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
       children: [
         GestureDetector(
           onTap: (){
             // _scrollController.animateTo(
             //   0,
             //   duration: const Duration(milliseconds: 600),
             //   curve: Curves.easeInOut,
             // );
           },
           child: Container(
             child: Column(
               children: [
                 Image.asset("assets/icons/icon_back_to_top.png",
                   width: 10,
                   height: 4,),
                 Image.asset("assets/icons/icon_back_to_top.png",
                   width: 10,
                   height: 4,),

                 Text(
                     "Back to Top",
                     style: TextStyles(
                       textColor: AppColors.textWhite,
                       fontSize: 15,
                     ).getBoldStyle()),
               ],
             ),
           ),
         ),

         const SizedBox(height: 30),

         Wrap(
           alignment: WrapAlignment.center,
           spacing: 20,
           runSpacing: 10,
           children: [
             _socialLink(
               "GitHub",
               "https://github.com/yourusername",
               Icons.code,
             ),
             _socialLink(
               "LinkedIn",
               "https://linkedin.com/in/yourusername",
               Icons.link,
             ),
             _socialLink(
               "Twitter",
               "https://twitter.com/yourusername",
               Icons.alternate_email,
             ),
             _socialLink(
               "Email",
               "mailto:youremail@example.com",
               Icons.mail,
             ),
           ],
         ),


         const SizedBox(height: 20),
         Text(
           "© ${DateTime.now().year} Manoj Thakur. All rights reserved.",
           style: TextStyles(
             textColor: AppColors.textGrey,
             fontSize: 14,
             fontFamily: "Open Sans",
           ).getRegularStyle(),
         )

       ]
      ),
    );
   }
   Widget _socialLink(String name, String url, IconData icon) {
     return InkWell(
       onTap: () => _launchURL(url),
       child: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           Icon(icon, color: AppColors.textWhite, size: 20),
           const SizedBox(width: 6),
           Text(
             name,
             style: TextStyles(
               textColor: AppColors.textWhite,
               fontSize: 14,
             ).getMediumStyle(),
           ),
         ],
       ),
     );
   }

   Future<void> _launchURL(String url) async {
     final uri = Uri.parse(url);
     if (await canLaunchUrl(uri)) {
       await launchUrl(uri, mode: LaunchMode.externalApplication);
     }
   }

}