import 'package:flutter/material.dart';
import 'package:note_app/widgets/constant_file.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isloading = false});
  final bool isloading;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloading
              ? SizedBox(
                height: 24,
                width: 24 ,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
              : Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
