import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';


class CircleButtonWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  const CircleButtonWithIcon({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 55),

            Text(title, textAlign: TextAlign.center,
              style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
              )
            ),
          ],
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
          side: MaterialStateProperty.all(BorderSide(width: 5, color: DarkColors.cyan1)),
          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all(DarkColors.main1), // <-- Button color
          overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed)) return Colors.red; // <-- Splash color
          }),
        ),
      ),
    );

      /*Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
          border: Border.all(color: DarkColors.cyan1, width: 5)
      ),
      child: Text("hi"),
    );*/
  }
}
