import 'package:sample_getx/core/extensions/extensions.dart';
import 'package:sample_getx/core/themes/app_icons.dart';
import 'package:sample_getx/views/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({
    required this.selectTabIndex,
    required this.items,
    this.tabHeight,
    super.key,
    this.selectedBorderRadius,
    this.selectedColor,
    this.fontSize,
    this.opacityShadow, this.isScrollable,
  });

  final Function(int index) selectTabIndex;
  final List<TabBarItem> items;
  final bool? isScrollable;
  final double? tabHeight;
  final double? fontSize;
  final double? selectedBorderRadius;
  final double? opacityShadow;
  final Color? selectedColor;

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  TabController? tabController;

  String fontFamily = 'Vazir-Medium';
  Color indicatorColor = Colors.green;
  Color labelColor = Colors.green;
  Color unselectedLabelColor = Colors.green;
  bool? isScrollable;

  bool isIndicatorLine = false;

  late Function(int index) selectTabIndex;
  late List<TabBarItem> items;
  late double? tabHeight;
  late double? fontSize;
  late double? selectedBorderRadius;
  late double? opacityShadow;
  late Color? selectedColor;

  @override
  void initState() {
    fontSize = widget.fontSize ?? 16;
    tabHeight = widget.tabHeight;
    labelColor = isIndicatorLine ? Get.context!.theme.primaryColorDark : Get.context!.theme.scaffoldBackgroundColor;
    unselectedLabelColor = Get.context!.theme.primaryColorDark;
    isScrollable = widget.isScrollable;
    items = widget.items;
    selectedBorderRadius = widget.selectedBorderRadius;
    opacityShadow = widget.opacityShadow;
    selectedColor = widget.selectedColor;

    tabController = TabController(length: items.length, vsync: this);
    tabController?.addListener(() {
      widget.selectTabIndex(tabController!.index);
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            const SizedBox(height: 28),
            TabBar(

                // labelColor: Colors.white, // رنگ متن تب انتخاب شده
                // unselectedLabelColor: Colors.black, // رنگ متن تب‌های دیگر
                // labelStyle: const TextStyle(fontWeight: FontWeight.bold), // استایل تب انتخاب شده
                // unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal), // استایل تب‌های دیگر
                isScrollable:isScrollable??false,
                tabAlignment:isScrollable!=null? TabAlignment.startOffset:null,
                indicatorColor: indicatorColor,
                labelColor: isIndicatorLine ? context.theme.primaryColorDark : context.theme.scaffoldBackgroundColor,
                unselectedLabelColor: unselectedLabelColor,
                labelStyle: TextStyle(fontSize: fontSize ?? fontSize, fontFamily: fontFamily),
                unselectedLabelStyle: TextStyle(fontSize: fontSize ?? fontSize, fontFamily: fontFamily),
                indicator: isIndicatorLine
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: indicatorColor,
                            width: 3,
                          ),
                        ),
                      )
                    : BoxDecoration(
                        color: selectedColor ?? context.theme.hintColor,
                        borderRadius: BorderRadius.circular(selectedBorderRadius ?? 8), // گوشه‌های گرد
                        boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: context.theme.primaryColorDark.withOpacity(opacityShadow ?? 0.3), // رنگ سایه//
                              blurRadius: 10, // شدت محو شدن
                              spreadRadius: 1, // گسترش سایه
                              offset: const Offset(0, 3), // جابجایی سایه
                            ),
                          ]),
                indicatorSize: TabBarIndicatorSize.tab,

                // indicatorColor: Colors.white,
                controller: tabController,
                dividerColor: Colors.yellow.withOpacity(0.5),
                dividerHeight: 1,

                //
                tabs: items
                    .map(
                      (final TabBarItem e) => Tab(
                        text: e.title,
                        icon: e.icon != null ? UImage(e.icon!) : null,
                        child: e.child,
                      ),
                    )
                    .toList()),
            TabBarView(
              controller: tabController,
              children: items
                  .map(
                    (final TabBarItem e) => e.page,
                  )
                  .toList(),
            ).expanded(),
          ],
        ),
      );
}

class TabBarItem {
  TabBarItem({
    required this.title,
    required this.page,
    this.icon,
    this.child,
  });

  final String title;
  final String? icon;
  final Widget? child;
  final Widget page;
}
