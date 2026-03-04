import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class EditNotesViewBodt extends StatefulWidget {
  const EditNotesViewBodt({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNotesViewBodt> createState() => _EditNotesViewBodtState();
}

class _EditNotesViewBodtState extends State<EditNotesViewBodt> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextFeild(
            onChanged: (data) {
              title = data;
            },
            hintText: widget.noteModel.title,
          ),
          SizedBox(height: 16),
          CustomTextFeild(
            onChanged: (data) {
              content = data;
            },
            hintText: widget.noteModel.subTitle ,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
