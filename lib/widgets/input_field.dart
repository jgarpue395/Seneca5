import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon; // = Icons.group_outlined;
  final IconData? icon; // = Icons.assignment_ind_outlined;
  bool obscureText;
  
  final String formProperty;
  Map<String, String> formValues;

  final bool password;

  InputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
    this.password = false, 
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      
      onChanged: (value) {
        widget.formValues[widget.formProperty] =  value;
      },

      validator: (value) {
        if (value!.isEmpty) return "Este campo es requerido";
        return null;
      },

      autovalidateMode: AutovalidateMode.disabled,
      obscureText: widget.obscureText,

      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,

        suffixIcon: widget.password ?  IconButton(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {
            widget.obscureText = !widget.obscureText;
            setState(() {});
          },
        ) : widget.suffixIcon == null ? null : Icon (widget.suffixIcon),
        icon: widget.icon == null ? null : Icon (widget.icon),  

        filled: true,
        fillColor: Colors.blue[700]     
      ),
    );
  }
}