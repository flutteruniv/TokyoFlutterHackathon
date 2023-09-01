import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class EntriesWidget extends StatelessWidget {
  const EntriesWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      bodyMaxWidth: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Entry',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            '参加チーム一覧',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '''Widget Wizards
株式会社Pentagon
THE NATUREs
Flutter Forwards
チームYUMEMI
た〜さん☆てっく!
TobuTakashimadairaLine
シェアハウスの仲間たち
チームパンパース
非公開チーム
Fukuoka Flutter Fanclub
DOCODOOR
hands
Oprol
非公開チーム
ドリグロ
俺ちゃんず
OKINA
Village
チーム大阪
1人参加14名(現地でチームを結成)
            ''',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   '8/15(火)~8/31(木)エントリー受付中\nGoogleフォームの必要事項へのご記入をお願いいたします',
          //   style: Theme.of(context).textTheme.titleMedium!.copyWith(
          //         color: Colors.white,
          //         fontWeight: FontWeight.normal,
          //       ),
          //   textAlign: TextAlign.center,
          // ),
          // const SizedBox(height: 16),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: AppColor.themeRed,
          //   ),
          //   onPressed: () {
          //     launchUrlString('https://forms.gle/wHicy1zRNpyzV4tQ8');
          //   },
          //   child: const Text('エントリーする'),
          // ),
          SizedBox(height: isMobile ? 20 : 40),
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
