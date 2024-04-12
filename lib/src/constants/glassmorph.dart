import 'package:flutter/material.dart';


//Caixa para Textos
class TGlassmorphText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final double? minWidth;
  final double? maxWidth;
  final double? minHeight;
  final double? maxHeight;

  const TGlassmorphText({
    Key? key,
    required this.text,
    this.textColor,
    this.fontSize,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF25252A).withOpacity(0.2),
      borderRadius: BorderRadius.circular(35),
      child: Container(
        constraints: BoxConstraints(
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
          minHeight: minHeight ?? 0,
          maxHeight: maxHeight ?? double.infinity,
        ),
        child: Container(
          constraints: BoxConstraints(
            minWidth: minWidth ?? 0,
            maxWidth: maxWidth ?? double.infinity,
            minHeight: minHeight ?? 0,
            maxHeight: maxHeight ?? double.infinity,
          ),
          decoration: BoxDecoration(
            color: Color(0xff333333).withOpacity(0.2),
            borderRadius: BorderRadius.circular(35),
            border: Border.all(width: 2, color: Color(0xFF25252A)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 20, // Use specified fontSize or default to 20
                  color: textColor ?? Colors.black, // Use specified textColor or default to black
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

