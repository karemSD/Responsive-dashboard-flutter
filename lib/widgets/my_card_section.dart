import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';
import 'package:responsive_dashboard_flutter/widgets/my_cards_page_view.dart';

import 'custom_indictor_listview.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round ();
      setState(() {});
    });
    super.initState();
  }

  late PageController pageController;
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpaces.verticalSpace(.6),
        const Text(
          "My Card",
          style: AppStyles.styleSemiBold20,
        ),
        AppSpaces.verticalSpace(.6),
        MyCardsPageView(
          pageController: pageController,
        ),
        AppSpaces.verticalSpace(.6),
        CustomIndictorListView(length: 3, currentPageIndex: currentPageIndex),
      ],
    );
  }
}
