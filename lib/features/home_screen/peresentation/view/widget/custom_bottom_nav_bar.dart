import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_job/features/home_screen/data/cubit/cubit.dart';
import 'package:task_job/features/home_screen/data/cubit/states.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            selectedItemColor: Colors.red,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              cubit.changeBottomNavBar(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_copy), label: 'Assets'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.support_agent), label: 'Support'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
