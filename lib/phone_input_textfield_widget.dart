import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInputTextFieldWidget extends StatefulWidget {
 final TextEditingController newController;
  const PhoneInputTextFieldWidget({Key? key, required this.newController,}) : super(key: key);

  @override
  State<PhoneInputTextFieldWidget> createState() => PhoneInputTextFieldWidgetState();
}

class PhoneInputTextFieldWidgetState extends State<PhoneInputTextFieldWidget> {
  var textFieldDigitsLength = LengthLimitingTextInputFormatter(14);

  @override
  void dispose() {
    widget.newController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController myController = widget.newController;
    return TextField(
      controller: myController,
      inputFormatters: [PhoneInputFormater(), textFieldDigitsLength],
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        hintText: '(123) 123-1234',
        hintStyle: TextStyle(color: Colors.black54),
        border: InputBorder.none,
      ),
    );
  }
}

class PhoneInputFormater extends TextInputFormatter {

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue)
  {
    final digitsOnly = newValue.text.replaceAll((RegExp(r'[^\d]+')),'');
    final digitsOnlyChars = digitsOnly.split('');
    var currentValue = <String>[];
    for(var i=0; i < digitsOnlyChars.length; i++) {
      if(i==0) {
        currentValue.add('(');
        currentValue.add(digitsOnlyChars[i]);
      }else if(i==3) {
        currentValue.add(') ');
        currentValue.add(digitsOnlyChars[i]);
      }else if(i==6){
        currentValue.add('-');
        currentValue.add(digitsOnlyChars[i]);
      }else{
        currentValue.add(digitsOnlyChars[i]);
      }
    }
    final resultValue = currentValue.join('');

    return TextEditingValue(text: resultValue, selection: TextSelection.collapsed(offset: resultValue.length));
  }


  
}
