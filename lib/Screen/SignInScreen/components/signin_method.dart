import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class signin_method extends StatelessWidget {
  const signin_method({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(),
        SizedBox(),
        GoogleAuthButton(
          onPressed: () {},
          darkMode: false,
          style: AuthButtonStyle(
            buttonType: AuthButtonType.icon,
          ),
        ),
        FacebookAuthButton(
          onPressed: (){},
          darkMode: false,
          style: AuthButtonStyle(
              buttonType: AuthButtonType.icon
          ),
        ),
        TwitterAuthButton(
          onPressed: (){},
          darkMode: false,
          style: AuthButtonStyle(
              buttonType: AuthButtonType.icon
          ),
        ),
        SizedBox(),
        SizedBox(),
      ],
    );
  }
}
