import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Telas de notas/Projetos.dart';
import 'package:testeagenda/src/features/core/screens/dashboard/NOSSA/Homescreen.dart';


class lockProjetos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lock Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LockProjetos(),
    );
  }
}

class LockProjetos extends StatefulWidget {
  const LockProjetos({Key? key}) : super(key: key);

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockProjetos> {
  String enteredPin = '';
  String correctPin = '1234'; // Change this to your desired PIN

  void _onKeyPressed(String value) {
    setState(() {
      enteredPin += value;
    });
  }

  void _onBackspacePressed() {
    setState(() {
      if (enteredPin.isNotEmpty) {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
      }
    });
  }

  void _onSubmitPressed() {
    if (enteredPin == correctPin) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PROJETOS()),
      );
    } else {
      // Show error message or reset pin
      setState(() {
        enteredPin = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: const Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                'Projetos', // Alterar para o nome da tela que vai redirecionar
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coloque a senha de acesso:',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 20),
            _buildPinCodeDisplay(),
            SizedBox(height: 20),
            _buildKeyboard(),
          ],
        ),
      ),
    );
  }

  Widget _buildPinCodeDisplay() {
    return Text(
      enteredPin.replaceAllMapped(RegExp(r'.'), (match) => '*'),
      style: TextStyle(fontSize: 30, color: Colors.white70),
    );
  }

  Widget _buildKeyboard() {
    return Container(
      width: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardButton('1'),
              _buildKeyboardButton('2'),
              _buildKeyboardButton('3'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardButton('4'),
              _buildKeyboardButton('5'),
              _buildKeyboardButton('6'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardButton('7'),
              _buildKeyboardButton('8'),
              _buildKeyboardButton('9'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKeyboardButton(''),
              _buildKeyboardButton('0'),
              _buildBackspaceButton(),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff333333).withOpacity(0.4),
      ),
            onPressed: _onSubmitPressed,
            child: Text('Acessar', style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }

  Widget _buildKeyboardButton(String value) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff333333).withOpacity(0.2),
      ),
      onPressed: value.isEmpty ? null : () => _onKeyPressed(value),
      child: Text(value, style: TextStyle(fontSize: 30))
    );
  }

  Widget _buildBackspaceButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff333333).withOpacity(0.2),
      ),
      onPressed: enteredPin.isEmpty ? null : _onBackspacePressed,
      child: Icon(Icons.backspace),
    );
  }
}
