import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomOrdersScreen extends StatelessWidget {
  const CustomOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      width: 296,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 42.5, left: 42.5, bottom: 8, top: 16),
              child: Container(
                color: Colors.grey.shade100,
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AssetsData.lineImage),
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(alignment: Alignment.bottomCenter, children: [
                      Image.asset(AssetsData.underLineImage),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 4),
                        child: Image.asset(AssetsData.cartImage),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            const Text(
              'No orders found',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
            ),
            Text(
              'you can place your needed orders to let serve you.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 144,
            )
          ],
        ),
      ),
    );
  }
}
