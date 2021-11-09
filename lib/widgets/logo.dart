import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;
  const Logo({Key? key, this.title = 'Messenger'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          const Image(
            image: AssetImage('assets/tag-logo.png'),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
