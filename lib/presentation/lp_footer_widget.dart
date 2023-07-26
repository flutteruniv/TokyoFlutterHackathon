import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../config/app_color.dart';
import 'lp_model.dart';
import 'privacy_page.dart';
import 'term_page.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Container(
      color: Colors.white,
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 32,
            )
          : const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 64,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 11,
                  color: Colors.black,
                ),
          ),
          SizedBox(
            height: isMobile ? 16 : 32,
          ),
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        '利用規約',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TermPage.route),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        'プライバシーポリシー',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(PrivacyPolicyPage.route),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        '運営会社',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => launchUrlString('https://kboy.jp'),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      '© 2023 東京Flutterハッカソン',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        '行動規範',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TermPage.route),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: 1,
                      height: 24,
                      color: AppColor.primaryNavyColor,
                    ),
                    InkWell(
                      child: Text(
                        'プライバシーポリシー',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(PrivacyPolicyPage.route),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: 1,
                      height: 24,
                      color: AppColor.primaryNavyColor,
                    ),
                    InkWell(
                      child: Text(
                        '運営会社',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => launchUrlString('https://kboy.jp'),
                    ),
                    const Spacer(),
                    Text(
                      '© 2023 東京Flutterハッカソン',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
