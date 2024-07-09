import 'package:flutter/material.dart';
import 'package:task_api_flutter/resources/app_color.dart';
import 'td_avatar.dart';

class TdAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TdAppBar({
    super.key,
    this.leftPressed,
    this.rightPressed,
    required this.title,
    this.avatar,
    this.color = AppColor.bgColor,
  });

  final VoidCallback? leftPressed;
  final VoidCallback? rightPressed;
  final String title;
  final String? avatar;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF373A5B),
      padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(
          top: MediaQuery.of(context).padding.top + 6.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftPressed,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.menu, size: 30.0, color: AppColor.white),
            ),
          ),
          const Text(
            'Todo',
            style: TextStyle(color: AppColor.white, fontSize: 30.0),
          ),
          GestureDetector(
            onTap: rightPressed,
            child: TdAvatar(avatar: avatar, isActive: true),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(86.0);
}
