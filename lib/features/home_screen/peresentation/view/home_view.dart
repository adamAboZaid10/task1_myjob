import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_job/features/home_screen/data/cubit/cubit.dart';
import 'package:task_job/features/home_screen/data/cubit/states.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/custom_bottom_nav_bar.dart';
import 'package:task_job/features/home_screen/peresentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 1,
              title: const Text(
                'home',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              ),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.format_list_bulleted,
                  color: Colors.black,
                ),
              ),
            ),
            body: const HomeViewBody(),
            bottomNavigationBar: const CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
