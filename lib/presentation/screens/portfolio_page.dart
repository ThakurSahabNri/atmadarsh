import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'package:atmadarsh/presentation/widgets/page_title_view.dart';
import 'package:atmadarsh/core/utils/DeviceInfoUtil.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  final List<String> projectCategories = ["ALL", "FLUTTER", "NATIVE ANDROID"];

  final Map<String, List<Project>> projectByCategory = {
    "ALL": [
      Project(
        title: "Businessnext",
        sortDescription: "Banking CRM software",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/businessnext_thumbnail.png",
        projectLink: "https://www.businessnext.com/",
      ),
      Project(
        title: "CropDoc",
        sortDescription: "AI Crop Disease Detection",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/cropdoc_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/CropDoc",
      ),
      Project(
        title: "FoodWave",
        sortDescription: "Food delivery application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/foodwave_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/Wave-of-Food",
      ),
      Project(
        title: "SnapWave",
        sortDescription: "Social media application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/snapwave_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/SnapWave",
      ),
      Project(
        title: "BookHub",
        sortDescription: "Book store app to read books online",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/bookhub_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/BookHub",
      ),
      Project(
        title: "FoodRunner",
        sortDescription: "Food delivery application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/foodrunner_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/Admin-Wave-of-Food",
      ),

      Project(
        title: "AtmaDarsh",
        sortDescription: "Dynamic portfolio",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/atmadarsh_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/atmadarsh",
      ),


    ],
    "FLUTTER": [
      Project(
        title: "Businessnext",
        sortDescription: "Banking CRM software",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/businessnext_thumbnail.png",
        projectLink: "https://www.businessnext.com/",
      ),
      Project(
        title: "CropDoc",
        sortDescription: "AI Crop Disease Detection",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/cropdoc_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/CropDoc",
      ),
      Project(
        title: "AtmaDarsh",
        sortDescription: "Dynamic portfolio",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/atmadarsh_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/atmadarsh",
      ),
    ],


    "NATIVE ANDROID": [
      Project(
        title: "FoodWave",
        sortDescription: "Food delivery application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/foodwave_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/Wave-of-Food",
      ),
      Project(
        title: "SnapWave",
        sortDescription: "Social media application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/snapwave_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/SnapWave",
      ),
      Project(
        title: "BookHub",
        sortDescription: "Book store app to read books online",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/bookhub_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/BookHub",
      ),
      Project(
        title: "FoodRunner",
        sortDescription: "Food delivery application",
        longDescription: "Deep learning–powered crop disease detector built with Flutter + tflite + tflite_flutter.",
        thumbnail: "assets/images/foodrunner_thumbnail.png",
        projectLink: "https://github.com/ThakurSahabNri/Admin-Wave-of-Food",
      ),
    ]
  };

  bool isMobile=false;

  @override
  Widget build(BuildContext context) {
     isMobile = DeviceTypeUtil.isMobile(context);


    return DefaultTabController(
      length: projectCategories.length,
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
                tabs: _projectCategoriesTabs(),
                indicatorColor: AppColors.textWhite,
                dividerColor: AppColors.dividerGrey,
                labelColor: AppColors.textWhite,
                unselectedLabelColor: AppColors.textGrey,
                labelStyle: TextStyles().getSemiBoldStyle(),
              ),

              const SizedBox(height: 20),

              // 🔹 TabBar View
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6, // space for grid
                child: TabBarView(
                  children: projectCategories.map((category) {
                    final projects = projectByCategory[category] ?? [];
                    return createProjectSection(projects);
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
  List<Widget> _projectCategoriesTabs() {
    return projectCategories
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
  Widget createProjectSection( List<Project> projects) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 3,
        childAspectRatio: isMobile ? 3: 2,
      ),
      itemBuilder: (context, index) {
        return projectCard(projects[index]);
      },
    );
  }

  // 🔹 Skill item widget
  Widget projectCard(Project project) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.maxWidth; // dynamic square

        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryBlack.withOpacity(0.15),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              // Background Image
              Positioned.fill(
                child: Image.asset(
                  project.thumbnail ?? "",
                  fit: BoxFit.cover,
                ),
              ),

              // Gradient Overlay for text readability
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
              ),

              // Content
              Positioned(
                left: 12,
                right: 12,
                bottom: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: TextStyles(
                        textColor: Colors.white,
                        fontSize: 18,
                      ).getBoldStyle(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),

                    Text(
                      project.sortDescription ?? "",
                      style: TextStyles(
                        textColor: Colors.white.withOpacity(0.9),
                        fontSize: 12,
                      ).getMediumStyle(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 10),

                    // GitHub button
                    SizedBox(
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          _launchURLBrowser(project.projectLink);
                        },
                        child: Text(
                         project.title !="Businessnext"? "View on GitHub":"Web Link",
                          style: TextStyles(
                            textColor: Colors.white,
                            fontSize: 12,
                          ).getMediumStyle(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  _launchURLBrowser(String ?url) async {
    var _url = Uri.parse(url??"");
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }

}

class Project{
  String title;
  String? sortDescription;
  String? longDescription;
  String? projectLink;
  String? thumbnail;

  Project({
    required this.title,
    this.sortDescription,
    this.longDescription,
    this.projectLink,
    this.thumbnail
});
}
