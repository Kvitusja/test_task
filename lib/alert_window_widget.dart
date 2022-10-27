import 'package:flutter/material.dart';

class AlertWindowWidget extends StatelessWidget {
  const AlertWindowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 144, 172, 252),
      content: const Text(
        'Feel relieved that this button works!',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(
              Color.fromARGB(255, 183, 200, 253),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Glad for you!',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
