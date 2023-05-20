import 'package:flutter/material.dart';

class AppCircleAvatar extends StatelessWidget {
  final double size;
  final ImageProvider backgroundImage;
  final bool isActive;
  final EdgeInsetsGeometry padding;
  final Function()? onTapped;
  AppCircleAvatar({
    super.key,
    required this.backgroundImage,
    this.size = 23.0,
    this.isActive = false,
    this.padding = EdgeInsets.zero,
    this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    var activeWidget = isActive
        ? Icon(
            Icons.circle,
            color: Colors.green,
            size: size / 2,
          )
        : const SizedBox.shrink();
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTapped,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: size,
              backgroundImage: backgroundImage,
            ),
            activeWidget,
          ],
        ),
      ),
    );
  }
}
