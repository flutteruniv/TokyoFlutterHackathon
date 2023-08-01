import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokyo_flutter_hackathon/presentation/lp_base_container.dart';
import 'package:tokyo_flutter_hackathon/presentation/lp_model.dart';

class ContentsWidget extends StatelessWidget {
  const ContentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Contents',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Text(
            'スペシャル対談',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: isMobile ? 14 : 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          SizedBox(
            width: isMobile ? 200 : 400,
            child: Image.asset('resources/special_talk.png'),
          ),
        ],
      ),
    );
  }
}
