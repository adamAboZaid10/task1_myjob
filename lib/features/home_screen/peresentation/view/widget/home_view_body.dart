import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_category_list.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_order_screen.dart';

import 'custom_name_write.dart';
import 'custom_onboarding_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
            TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'Category',
                  ),
                  Tab(
                    text: 'Services',
                  ),
                  Tab(
                    text: 'Orders',
                  ),
                ]),
            SizedBox(
              height: 335,
              width: 296,
              child: TabBarView(controller: tabController, children: const [
                CustomCategoryList(),
                Center(
                  child: Text('Services'),
                ),
                CustomOrdersScreen(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
