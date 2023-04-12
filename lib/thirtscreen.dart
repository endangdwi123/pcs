import 'package:flutter/material.dart';

class ThirtScreen extends StatelessWidget {
    
  const ThirtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Ketiga'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Data dari Layar Ketiga');
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
