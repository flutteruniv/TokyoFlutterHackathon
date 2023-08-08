import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokyo_flutter_hackathon/config/app_color.dart';
import 'package:tokyo_flutter_hackathon/presentation/lp_entiries_widget.dart';

import 'lp_contents_widget.dart';
import 'lp_footer_widget.dart';
import 'lp_judges_widget.dart';
import 'lp_model.dart';
import 'lp_outline_widget.dart';
import 'lp_prize_widget.dart';
import 'lp_sponsors_widget.dart';
import 'lp_timeline_widget.dart';
import 'lp_top_widget.dart';

class LPPage extends StatelessWidget {
  const LPPage({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LPModel>(
      create: (_) => LPModel(),
      builder: (context, child) {
        return ResponsiveBuilder(builder: (context, sizingInformation) {
          context.read<LPModel>().setSizingInformation(sizingInformation);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.backgroundBlack,
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 44,
                      child: Image.asset('resources/tokyo.png'),
                    ),
                    Text(
                      '東京Flutterハッカソン',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            body: const SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TopWidget(),
                    OutlineWidget(),
                    TimelineWidget(),
                    ContentsWidget(),
                    JudgesWidget(),
                    PrizeWidget(),
                    SponsorsWidget(),
                    EntriesWidget(),
                    FooterWidget(),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
