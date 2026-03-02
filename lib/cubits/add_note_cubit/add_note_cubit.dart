import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_sates.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteSates> {
  AddNoteCubit():super(AddNoteInitialState());

  addNote(NoteModel noteModel){
    
  }
  
}