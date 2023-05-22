import 'package:flutter/material.dart';

import '../../../config/device_config.dart';

class TrendKeywordList extends StatefulWidget {
  const TrendKeywordList({super.key});

  @override
  State<TrendKeywordList> createState() => _TrendKeywordListState();
}

class _TrendKeywordListState extends State<TrendKeywordList> {
  final lst = ["All", "Game", "UI", "designer", "misica", "learning english"];
  int _selectedIndex = 0;

  void _selectItem(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry _trendKeywordItemMargin = EdgeInsets.zero;
    EdgeInsetsGeometry _trendKeywordItemPadding = EdgeInsets.zero;
    double _itemHeight = 0.0;
    TextStyle? _titleTextStyle;
    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _trendKeywordItemMargin = const EdgeInsets.symmetric(horizontal: 5);
        _trendKeywordItemPadding =
            const EdgeInsets.symmetric(horizontal: 13, vertical: 5);
        _itemHeight = 30;
        _titleTextStyle = Theme.of(context).textTheme.bodyMedium;
        break;
      case DeviceScreenType.desktop:
      case DeviceScreenType.tablet:
        _trendKeywordItemMargin = const EdgeInsets.symmetric(horizontal: 10);
        _trendKeywordItemPadding =
            const EdgeInsets.symmetric(horizontal: 15, vertical: 7);
        _itemHeight = 40;
        _titleTextStyle = Theme.of(context).textTheme.displayMedium;
        break;
      default:
    }
    return SizedBox(
      height: _itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lst.length,
        itemBuilder: (context, index) {
          bool isSeleted = _selectedIndex == index;

          return GestureDetector(
            child: Container(
              margin: _trendKeywordItemMargin,
              padding: _trendKeywordItemPadding,
              decoration: BoxDecoration(
                color: isSeleted
                    ? Colors.grey.withOpacity(0.3)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                lst[index],
                style: _titleTextStyle,
              ),
            ),
            onTap: () {
              _selectItem(index);
            },
          );
        },
      ),
    );
  }
}
