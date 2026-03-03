import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constant_file.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAllNotes(){
    emit(NotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes =notesBox.values.toList();
      emit(NotesSucessState(notes: notes));
    } catch (e) {
      emit(NotesFailureState(e.toString()));
    }
  }

}
