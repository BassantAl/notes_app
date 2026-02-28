import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16,),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text('flutter tips',style: TextStyle(color: Colors.black , fontSize: 26),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text('build your crear with tharwet samy',style: TextStyle(color: Colors.black.withAlpha(130) , fontSize: 18)),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash , color: Colors.black, size: 24,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May21,2022' , style: TextStyle(color: Colors.black.withAlpha(150)),),
          )
        ],
      ),
    );
  }
}