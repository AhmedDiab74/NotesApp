import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffFFCC80),
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    title: const Text(
                      "Flutter Tips",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text("Ahmed diab",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 16,
                          )),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.black,
                        size: 24,
                      ),
                      onPressed: () {},
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "May21 , 2022",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
