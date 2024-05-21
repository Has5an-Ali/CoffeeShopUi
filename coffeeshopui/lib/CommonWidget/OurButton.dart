import 'package:coffeeshopui/const/const.dart';

Widget CommonButton({String? title, onpress, textcolor}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onpress,
      child: title!.text.fontFamily(bold).color(textcolor).make());
}
