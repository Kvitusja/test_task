import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      height: 50,
                      width: 92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 183, 200, 253),
                      ),
                      child: Center(
                        child: IntlPhoneField(
                          pickerDialogStyle: PickerDialogStyle(
                            backgroundColor: const Color.fromARGB(255, 183, 200, 253),
                            searchFieldInputDecoration: InputDecoration(

                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                            ),
                          ),
                          disableLengthCheck: true,
                          initialCountryCode: 'US',
                          decoration: const InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 183, 200, 253),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '(123)123-1234',
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none,
                            ),
                          ),
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
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 183, 200, 253),
                          ),
                        ),
                        onPressed: null,
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                )),
          ],
        ));
  }
}
