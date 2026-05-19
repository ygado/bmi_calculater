import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar defaultAppBar({
  IconData? iconsLeadin,
  IconData? iconsAcction1,
  IconData? iconsAcction2,
  required String title,
  Function()? onPressed,
}) => AppBar(
  backgroundColor: Colors.blue,
  leading: iconsLeadin != null
      ? defaultIconButton(icons: iconsLeadin, onPressed: onPressed)
      : null,
  title: defaultText(text: title, color: Colors.white, size: 20),
  actions: [
    if (iconsAcction1 != null) defaultIconButton(icons: iconsAcction1),

    if (iconsAcction2 != null) defaultIconButton(icons: iconsAcction2),
  ],
);

Widget defaultIconButton({required IconData icons, Function()? onPressed}) =>
    IconButton(
      highlightColor: Colors.white,
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      icon: Icon(icons, color: Colors.black),
    );

Widget defaultText({
  required String text,
  required Color color,
  required double size,
  TextOverflow? overflow,
  int? maxLines,
}) => Text(
  maxLines: maxLines,
  overflow: overflow,
  text,
  style: TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
);

Widget defaultTextField({
  TextEditingController? controller,
  ValueChanged? onChanged,
  ValueChanged? onFieldSubmitted,
  required bool isPassword,
  TextInputType? keyboardType,
  FormFieldValidator? validator,
  required String text,
  required IconData prefix,
  IconData? suffix,
  Function()? suffixOnPressed,
}) => TextFormField(
  controller: controller,
  onChanged: onChanged,
  onFieldSubmitted: onFieldSubmitted,
  obscureText: isPassword,
  keyboardType: keyboardType,
  validator: validator,
  decoration: InputDecoration(
    labelText: text,
    prefixIcon: Icon(prefix, color: Colors.blue),
    suffixIcon: IconButton(
      onPressed: suffixOnPressed,
      icon: Icon(suffix, color: Colors.blue),
    ),
    border: OutlineInputBorder(),
  ),
);

Widget defaultMaterialButton({
  Color? containerColor,
  required double fonSize,
  double? width,
  required String text,
  required Function() onPressed,
  required Color color,
}) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8.0),
  child: Container(
    width: width,
    child: MaterialButton(
      color: containerColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: onPressed,
      child: defaultText(text: text, color: color, size: fonSize),
    ),
  ),
);

Widget defaultContainer({
  required String text,
  required Color color,
  required double size,
  required String images,
  required Color colorContainer,
}) => Container(
  color: colorContainer,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(images, height: 100, width: 100),
      defaultText(text: text, color: color, size: size),
    ],
  ),
);

Widget defaultContainer2({
  required String text1,
  required String text2,
  required Function() onPressedAdd,
  required Function() onPressedRemove,
}) => Container(
  color: Colors.grey,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      defaultText(text: text1, color: Colors.white, size: 20),
      defaultText(text: text2, color: Colors.white, size: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag:null ,
            mini: true,
            onPressed: onPressedAdd,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag:null ,
            mini: true,
            onPressed: onPressedRemove,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    ],
  ),
);
