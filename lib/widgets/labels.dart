import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  const Labels({Key? key, required this.ruta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          (ruta == 'register')
              ? '¿No tienes cuenta?'
              : '¿Ya tienes una cuenta?',
          style: const TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, ruta);
          },
          child: Text(
            (ruta == 'register') ? 'Crear una cuenta' : 'Ir a login',
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
