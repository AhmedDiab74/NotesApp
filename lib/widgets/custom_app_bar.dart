import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
          const Spacer(),
          CustomIcon(
            icon: icon,
            onTap: onTap,
          )
        ],
      ),
    );
  }
}
