import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';

class HorizontalCardPagerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HorizontalCardPagerScreenState();
  }
}

class _HorizontalCardPagerScreenState
    extends BaseStatefulState<HorizontalCardPagerScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<CardItem> items = [
      IconTitleCardItem(
        text: "Alarm",
        iconData: Icons.access_alarms,
      ),
      IconTitleCardItem(
        text: "Add",
        iconData: Icons.add,
      ),
      IconTitleCardItem(
        text: "Call",
        iconData: Icons.add_call,
      ),
      IconTitleCardItem(
        text: "WiFi",
        iconData: Icons.wifi,
      ),
      IconTitleCardItem(
        text: "File",
        iconData: Icons.attach_file,
      ),
      IconTitleCardItem(
        text: "Air Play",
        iconData: Icons.airplay,
      ),
    ];
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "HorizontalCardPagerScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/horizontal_card_pager");
        },
      ),
      body: Center(
        child: HorizontalCardPager(
          onPageChanged: (page) => print("page : $page"),
          onSelectedItem: (page) => print("selected : $page"),
          items: items,
        ),
      ),
    );
  }
}
