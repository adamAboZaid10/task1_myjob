import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomNameAndWrite extends StatelessWidget {
  const CustomNameAndWrite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                width: 32, height: 32, child: Image.asset(AssetsData.profile)),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Hey, Ahmed',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(
              width: 2,
            ),
            SizedBox(
                width: 20, height: 20, child: Image.asset(AssetsData.goodIcon)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Multi-Services for Your Real Estate Needs',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'Explore diverse real estate services for all your needs:'
          ' property management, construction, insurance '
          'and more in one place.',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
