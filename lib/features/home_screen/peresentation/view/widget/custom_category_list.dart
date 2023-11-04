import 'package:flutter/material.dart';

import 'custom_list_item.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            width: 335,
            height: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories View',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const SizedBox(
                width: 335, height: 48, child: CustomListCategoryItem()),
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
