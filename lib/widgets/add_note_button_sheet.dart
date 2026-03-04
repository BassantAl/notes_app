import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_sates.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AddNoteCubit();
      },
      child: BlocConsumer<AddNoteCubit, AddNoteSates>(
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            print('failed ${state.errorMessage}');
          }

          if (state is AddNoteSuccessState) {
            context.read<NotesCubit>().fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16) +
                   EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
