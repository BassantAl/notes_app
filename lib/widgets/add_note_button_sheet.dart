import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextFeild(hintText: 'Title',),
          SizedBox(height: 16,),
          CustomTextFeild(hintText: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}