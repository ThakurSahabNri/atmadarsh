import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  final List<String> skillsCategories = ["ALL", "CODED", "DESIGN"];

  final Map<String, List<String>> skillsByCategory = {
    "ALL": [
      "SnapWave", "BookHub", "Quizy", "Food Runner",
      "Artify", "LensPro", "UIverse", "NoteHub",
    ],
    "CODED": [
      "SnapWave", "BookHub", "Quizy", "Food Runner",
    ],
    "DESIGN": [
      "Artify", "UIverse", "LensPro",
    ],
  };

  @override
  Widget build(BuildContext context) {
    final isMobile = DeviceTypeUtil.isMobile(context);

    return DefaultTabController(
      length: skillsCategories.length,
      child: SingleChildScrollView(
        child: Container(
          color: AppColors.primaryBlack.withOpacity(0.9),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/portfolioBackgroundImage.png"),
                  ),
                ),
                child: PageTitleView.pageTitleView(
                  "PORTFOLIO",
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 50),

              // 🔹 Tab bar
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: _skillsCategoriesTabs(),
                indicatorColor: AppColors.textWhite,
                dividerColor: AppColors.dividerGrey,
                labelColor: AppColors.textWhite,
                unselectedLabelColor: AppColors.textGrey,
                labelStyle: TextStyles(
                  fontFamily: "Montserrat",
                ).getSemiBoldStyle(),
              ),

              const SizedBox(height: 20),

              // 🔹 TabBar View
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6, // space for grid
                child: TabBarView(
                  children: skillsCategories.map((category) {
                    final skills = skillsByCategory[category] ?? [];
                    return createSkillSection(isMobile, skills);
                  }).toList(),
                ),
              ),

              Text("And many more to come!",
              style: TextStyles(
                textColor: AppColors.textWhite,
                fontSize: 20,
                fontFamily: "Montserrat",
              ).getSemiBoldStyle(),),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Generate tab titles
  List<Widget> _skillsCategoriesTabs() {
    return skillsCategories
        .map((category) => Text(
      category,
      style: TextStyles(
        textColor: AppColors.textWhite,
        fontFamily: "Montserrat",
      ).getSemiBoldStyle(),
    ))
        .toList();
  }

  // 🔹 Create grid section
  Widget createSkillSection(bool isMobile, List<String> skills) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      itemCount: skills.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: isMobile ? 4 : 3,
      ),
      itemBuilder: (context, index) {
        return skillSection(title: skills[index]);
      },
    );
  }

  // 🔹 Skill item widget
  Widget skillSection({required String title}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryBlack, width: 1),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.work, color: AppColors.primaryBlack, size: 36),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyles(
              textColor: AppColors.textBlack,
              fontFamily: "Montserrat",
              fontSize: 18,
            ).getSemiBoldStyle(),
          ),
        ],
      ),
    );
  }
}
