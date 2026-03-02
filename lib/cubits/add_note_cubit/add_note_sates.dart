class AddNoteSates {}

class AddNoteInitialState extends AddNoteSates {}

class AddNoteFailureState extends AddNoteSates {
  final String errorMessage;
  AddNoteFailureState(this.errorMessage);
}

class AddNoteLoadingState extends AddNoteSates {}

class AddNoteSuccessState extends AddNoteSates {}
