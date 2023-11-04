import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_name_write.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_onboarding_view.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_order_screen.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_row_category_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const CustomNameAndWrite(),
            const SizedBox(
              height: 16,
            ),
            const CustomOnBoardingView(),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.red,
                expansionFactor: 7,
                dotHeight: 10,
                dotWidth: 5,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomRowCategoryItem(),
            //const CustomCategoryList(),
            const CustomOrdersScreen(),
          ],
        ),
      ),
    );
  }
}
