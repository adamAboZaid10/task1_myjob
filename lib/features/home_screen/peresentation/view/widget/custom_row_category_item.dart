import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_job/features/home_screen/data/cubit/cubit.dart';
import 'package:task_job/features/home_screen/data/cubit/states.dart';

class CustomRowCategoryItem extends StatefulWidget {
  const CustomRowCategoryItem({Key? key}) : super(key: key);

  @override
  State<CustomRowCategoryItem> createState() => _CustomRowCategoryItemState();
}

class _CustomRowCategoryItemState extends State<CustomRowCategoryItem>
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
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   clipBehavior: Clip.antiAliasWithSaveLayer,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  //   child: MaterialButton(
                  //     color: cubit.isCategory ? Colors.red : Colors.grey,
                  //     onPressed: () {
                  //       cubit.changeCategory();
                  //     },
                  //     child: const Text(
                  //       'Categories',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   clipBehavior: Clip.antiAliasWithSaveLayer,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  //   child: MaterialButton(
                  //     color: Colors.grey,
                  //     onPressed: () {},
                  //     child: const Text(
                  //       'Services',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                  //
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
