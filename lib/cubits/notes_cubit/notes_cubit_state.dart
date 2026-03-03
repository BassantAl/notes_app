part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

class NotesFailureState extends NotesCubitState {
  final String errorMessage;
  NotesFailureState(this.errorMessage);
}

class NotesLoadingState extends NotesCubitState {}

class NotesSucessState extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSucessState({required this.notes});
}
