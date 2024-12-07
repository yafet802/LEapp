import "package:flutter/material.dart";

class CapturaDato extends StatelessWidget {
  
  final TextEditingController nombreControlador;
  final String nombreCampo;
  final bool obscureText;

  CapturaDato({
    required this.nombreControlador,
    required this.nombreCampo,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 70.0, bottom: 17.0),
          child: Text(
            nombreCampo,
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold', 
              color: Colors.black, 
              fontSize: 28.0
            ),
          ),
        ),
        Container(
          width: 576.0,
          height: 74.0,
           decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 40,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: TextFormField(
            controller: nombreControlador,
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
              focusedBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
              hintText: nombreCampo,
              filled: true,
              fillColor: const Color.fromRGBO(218, 224, 240, 1),
              hintStyle: const TextStyle(
                fontFamily: 'Poppins-Medium', 
                color: Color.fromRGBO(126, 132, 148, 1), 
                fontSize: 22.0
              ),
              contentPadding: const EdgeInsets.only(left: 70.0, top: 100.0, bottom: 20.0)
            ),
          ),
        ),
      ],
    );
  }
}
