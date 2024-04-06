import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            title: "Edit Note",
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
