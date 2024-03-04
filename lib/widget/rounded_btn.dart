import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  final style btnStyle;

  RoundedButton({
   required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callback,
    this.btnStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        callback!();
      },
      child: icon!= null ?  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Container(width: 13,),
          Text(btnName ,style: textStyle,)
        ],
    ): Text(btnName ,style: textStyle,),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                    Radius.circular(21),
            ),
        ),

        // shadowColor: bgColor,
        // shape:  RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(21),
        //     bottomLeft: Radius.circular(21)
        //   )
        // )
      ),
    );
  }
}
