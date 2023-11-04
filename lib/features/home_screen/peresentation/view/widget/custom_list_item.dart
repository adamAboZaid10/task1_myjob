import 'package:flutter/material.dart';

class CustomListCategoryItem extends StatelessWidget {
  const CustomListCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 48,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(Icons.category_outlined),
            SizedBox(
              width: 4,
            ),
            Expanded(
                child: Text(
              'Construction',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            )),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
