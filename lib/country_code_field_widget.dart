import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCodeFieldWidget extends StatelessWidget {
  const CountryCodeFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      pickerDialogStyle: PickerDialogStyle(
        searchFieldPadding: const EdgeInsets.fromLTRB(8, 50, 8, 5),
        backgroundColor: const Color.fromARGB(255, 144, 172, 252),
        searchFieldInputDecoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 183, 200, 253),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 144, 172, 252),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 144, 172, 252),
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.black87),
          label: const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Country code',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: const Icon(Icons.search),
        ),
      ),
      disableLengthCheck: true,
      initialCountryCode: 'US',
      decoration: const InputDecoration(
          border: InputBorder.none,
          ),
    );
  }
}
