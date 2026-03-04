import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_sates.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constant_file.dart';

class AddNoteCubit extends Cubit<AddNoteSates> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color color =Colors.blue;
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }

  // add<T>(T name) {
  //   //name generics
  //   return name;
  // }
}
