import 'package:flutter/material.dart';
import 'package:noteapp/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key, required this.isActive});
  final bool isActive;

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff52489C),
    Color(0xff4062BB),
    Color(0xff59C3C3),
    Color(0xff0FDE5B),
    Color(0xffF45B69),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
