
import 'package:arsi/core/route/colors.dart';
import 'package:arsi/nav/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomFollowNotifcation extends StatefulWidget {
  const CustomFollowNotifcation({Key? key}) : super(key: key);

  @override
  State<CustomFollowNotifcation> createState() =>
      _CustomFollowNotifcationState();
}

class _CustomFollowNotifcationState extends State<CustomFollowNotifcation> {
  bool follow = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: const AssetImage("assets/amira.jpg"),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "amira zaouali",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: mainText),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "New following you  .  h1",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: SecondaryText),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: follow == false ? 50 : 30),
            child: CustomButton(
              height: 40,
              color: follow == false ? primary : form,
              textColor: follow == false ? Colors.white : mainText,
              onTap: () {
                setState(() {
                  follow = !follow;
                });
              },
              text: "Follow",
            ),
          ),
        ),
      ],
    );
  }
}
