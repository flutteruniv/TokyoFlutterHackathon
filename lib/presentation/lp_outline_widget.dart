import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class OutlineWidget extends StatelessWidget {
  const OutlineWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Outline',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            '開催概要',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '■日時\n2023年9月30日（土）、10月1日（日）\n\n■参加対象\nFlutterが好きなエンジニア、デザイナー、プランナー\n\n■場所\nサイバーエージェント Abema Towers 10F\n\n■内容\n・2~5人チームを組みます。\n・1人参加申し込みしていただき、当日会場で即席チームを結成することも可能です。\n・Flutterでアプリ(モバイル, デスクトップ, webなんでも可)を開発してください。\n・事前準備は自由です。\n・1日目のオープニングで発表されるテーマに沿ったアプリを作ってください。\n・2日目の終わりにスライド等を用いてチームごとに発表していただきます。\n・審査員が優秀作品を複数選定し、表彰と副賞を贈呈します。\n\n■募集チーム数\n・20チーム目安（合計人数100人）\n・オンライン参加は原則なし\n・応募多数の場合は抽選',
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
