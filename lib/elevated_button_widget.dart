import 'package:flutter/material.dart';
import 'package:test_task/alert_window_widget.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final TextEditingController newController;
  const ElevatedButtonWidget({
    Key? key,
    required this.newController,
  }) : super(key: key);

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  bool submit = false;

  @override
  void initState() {
    super.initState();
    widget.newController.addListener(() {
      var submit = (widget.newController.text.length >= 14);
      setState(() {
        this.submit = submit;
      });
    });
  }

  @override
  void dispose() {
    widget.newController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 183, 200, 253),
        ),
      ),
      onPressed: submit
          ? () => showDialog(
              context: context, builder: (context) => const AlertWindowWidget())
          : null,
      child: const Icon(Icons.arrow_forward),
    );
  }
}
