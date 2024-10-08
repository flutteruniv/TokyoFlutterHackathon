import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

class SponsorsWidget extends StatelessWidget {
  const SponsorsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sponsors',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            'スポンサー',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '■主催',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 20,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: isMobile ? 100 : 200,
                child: Image.asset('resources/yumemi.png'),
              ),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                width: isMobile ? 90 : 180,
                child: Image.asset('resources/flutteruniv_black.png'),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '■会場スポンサー',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 20,
                ),
          ),
          SizedBox(
            width: isMobile ? 100 : 200,
            child: Image.asset('resources/cyberagent.png'),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '■ゴールドスポンサー',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 20,
                ),
          ),
          SizedBox(height: isMobile ? 8 : 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  launchUrlString('https://magicpod.com/');
                },
                child: SizedBox(
                  width: isMobile ? 120 : 240,
                  height: isMobile ? 120 : 240,
                  child: Image.asset('resources/magicpod_color.png'),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  launchUrlString('https://driglo.net/');
                },
                child: SizedBox(
                  width: isMobile ? 90 : 180,
                  height: isMobile ? 90 : 180,
                  child: Image.asset('resources/driglo_vertical.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '■シルバースポンサー',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 12 : 20,
                ),
          ),
          SizedBox(height: isMobile ? 8 : 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  launchUrlString('https://lp.youtrust.jp/');
                },
                child: SizedBox(
                  width: isMobile ? 50 : 100,
                  child: Image.asset('resources/youtrust.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  launchUrlString('https://www.freebell.net/');
                },
                child: SizedBox(
                  width: isMobile ? 50 : 100,
                  child: Image.asset('resources/logo_freebell.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  launchUrlString('https://www.harmo.biz/');
                },
                child: SizedBox(
                  width: isMobile ? 50 : 100,
                  child: Image.asset('resources/harmo.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  launchUrlString('https://ritsuan.com/');
                },
                child: SizedBox(
                  width: isMobile ? 50 : 100,
                  child: Image.asset('resources/ritsuan.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Text(
            '東京Flutterハッカソンを一緒に盛り上げていただけるスポンサー様を募集しております。\nスポンサーをご希望の方は下記ボタンからGoogleフォームに飛んでいただき、お問い合わせください。\nhello@flutteruniv.com より順次資料をお送りさせていただきます。',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              launchUrlString('https://forms.gle/zbdv5ACi4zEbMPiz7');
            },
            child: const Text('スポンサーをご希望の企業様はこちら'),
          ),
        ],
      ),
    );
  }
}
