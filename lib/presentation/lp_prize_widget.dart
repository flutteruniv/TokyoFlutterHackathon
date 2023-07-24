import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class PrizeWidget extends StatelessWidget {
  const PrizeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Prize',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            '賞',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            'Coming soon..',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

class FeatureListTile extends StatelessWidget {
  const FeatureListTile({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: isMobile ? 28 : 48,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryNavyColor,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
