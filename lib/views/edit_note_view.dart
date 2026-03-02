import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_notes_view_bodt.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBodt(
      ),
    );
  }
}