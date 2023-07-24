import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Timeline',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            'タイムライン(随時更新)',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          SizedBox(
            width: 360,
            child: Text(
              '''■9/30 (土)
11:00~12:00　オープニング
12:00~19:00　開発タイム

■10/1 (日)
10:00~15:00　開発タイム
15:00~17:00　発表
17:00~18:00　結果発表・閉会式
19:00~22:00　打ち上げ''',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
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
