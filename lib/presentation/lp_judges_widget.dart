import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokyo_flutter_hackathon/presentation/lp_base_container.dart';
import 'package:tokyo_flutter_hackathon/presentation/lp_model.dart';
import 'package:url_launcher/link.dart';

enum JudgeType {
  kboy(
    name: 'kboy',
    title: 'Flutter大学創始者',
    xAccountName: 'kboy_silvergym',
    logoAssetName: 'resources/judge_kboy.jpeg',
    desc:
        '1991年生まれ。札幌出身。早稲田大学創造理工学部卒。新卒で入ったプロトコーポレーションでフリマアプリの開発ディレクターを経験。その後、JX通信社で「NewsDigest」のiOSエンジニアとして1年半従事、GraffityにてARアプリ「ペチャバト」の開発を1年半リード。その後独立し、１年半フリーランスエンジニアとしてARKit、Swift、Flutterを用いて数々のスマホアプリの開発に従事。2020年6月に現在の株式会社KBOYを創業し、エンジニアコミュニティの「Flutter大学」をスタートする。コープ札幌、株式会社いえメシ、ドコドア株式会社のFlutter技術顧問を経て、現在は自社サービスにフォーカス中。',
  ),
  yohtan(
    name: '渡部陽太',
    title: '株式会社ゆめみ 技術担当取締役',
    xAccountName: 'yohta_watanave',
    logoAssetName: 'resources/judge_よーたん.jpeg',
    desc:
        '2020年3月にiOS/Andoidテックリードとして入社。複数のプロジェクトを支援する傍ら、新人研修の作成や新技術推進とiOSグループとAndroidグループ両方の委員会活動に関わる。現在は急成長スタートアップの内製化支援とFlutterの技術開拓に注力。視野の広さとバランス感覚、行動力を活かして、技術担当取締役としてCTO室を立ち上げ、他社CTOとのネットワーキングを図りつつ内製化支援サービスのリード獲得、技術ブランディングを推進している。',
  ),
  k9i(
    name: 'K9i',
    title: '株式会社ゆめみ Flutterリードエンジニア',
    xAccountName: 'K9i_apps',
    logoAssetName: 'resources/judge_K9i.jpeg',
    desc:
        'Androidエンジニア、Flutterエンジニアなどを経て2023年5月にFlutterエンジニアとしてゆめみ入社。ゆめみ入社後はFlutterコミュニティを盛り上げるべくイベントに力を入れており、「YOUTRUST x ゆめみ Flutter LT会@渋谷」の企画・運営、「FlutterKaigi 2023」広報チームリーダー、「東京Flutterハッカソン」ゆめみ側Organizerなどをしている。RiverpodにContributeした話を「YOUTRUST x ゆめみ Flutter LT会@渋谷」と「FlutterGakkai」で発表しており、ネタを擦ることに定評がある。',
  ),
  shohei(
    name: '中川祥平（shohei）',
    title: '株式会社Never 代表取締役',
    xAccountName: 'hobbydevelop',
    logoAssetName: 'resources/judge_shohei.jpeg',
    desc:
        'NEVER STOP CREATE モバイルアプリケーションをつくりつづける会社📱株式会社Neverの代表です。自社＆受託開発でFlutterを用いたモバイルアプリケーションの開発をしております。オススメのサウナが分かるアプリ「サウナライフ」の開発・運営をしております。',
  ),
  ;

  const JudgeType({
    required this.name,
    required this.title,
    required this.xAccountName,
    required this.logoAssetName,
    required this.desc,
  });

  final String name;
  final String title;
  final String xAccountName;
  final String logoAssetName;
  final String desc;
}

class JudgesWidget extends StatelessWidget {
  const JudgesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Judges',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            '審査員',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          ...JudgeType.values.map(
            (judge) => JudgeItemWidget(judgeType: judge),
          ),
        ],
      ),
    );
  }
}

class JudgeItemWidget extends StatelessWidget {
  const JudgeItemWidget({
    super.key,
    required this.judgeType,
  });
  final JudgeType judgeType;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: isMobile ? 50 : 100,
          child: ClipOval(
            child: Image.asset(judgeType.logoAssetName),
          ),
        ),
        Text(
          judgeType.name,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Link(
          uri: Uri.parse('https://twitter.com/${judgeType.xAccountName}'),
          target: LinkTarget.blank,
          builder: (context, cb) => TextButton(
            onPressed: cb,
            child: Text(
              '𝕏 @${judgeType.xAccountName}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          judgeType.title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
        ),
        SizedBox(height: isMobile ? 10 : 20),
        Text(
          judgeType.desc,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
        ),
        SizedBox(height: isMobile ? 20 : 40),
      ],
    );
  }
}
