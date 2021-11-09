import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textBtn;
  final Function() onPressed;
  final Color btnColor;
  final Color textBtnColor;

  const CustomButton({
    Key? key,
    required this.textBtn,
    required this.onPressed,
    this.btnColor = Colors.blue,
    this.textBtnColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Text(
            textBtn,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        onPrimary: textBtnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
