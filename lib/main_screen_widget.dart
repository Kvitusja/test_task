import 'package:flutter/material.dart';
import 'package:test_task/phone_input_textfield_widget.dart';
import 'country_code_field_widget.dart';
import 'elevated_button_widget.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController newController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 144, 172, 252),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 144, 172, 252),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      height: 50,
                      width: 116,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 183, 200, 253),
                      ),
                      child: const CountryCodeFieldWidget(),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 183, 200, 253),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: PhoneInputTextFieldWidget(newController: newController),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                      bottom: 18,
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: ElevatedButtonWidget(newController: newController,),
                    ),
                  ),
                )),
          ],
        ));
  }
}
