import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomOnBoardingView extends StatelessWidget {
  const CustomOnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kContainerColor,
      width: double.infinity,
      height: 170,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(bottom: 16, top: 30, right: 16, left: 8),
                  child: Expanded(
                    child: Text(
                      'Multi-Services for Your Real Estate Needs',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: const Text(
                        'order',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 144,
            width: 144,
            child: Image.asset(AssetsData.onBoardingImage),
          ),
        ],
      ),
    );
  }
}
