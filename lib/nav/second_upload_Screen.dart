import 'package:arsi/core/route/colors.dart';

import 'package:arsi/nav/custom_button.dart';
import 'package:arsi/nav/custom_text_fild_in_upload.dart';
import 'package:arsi/nav/home_screenn.dart';

import 'package:flutter/material.dart';

class SecondUploadScreen extends StatefulWidget {
  const SecondUploadScreen({Key? key}) : super(key: key);

  @override
  State<SecondUploadScreen> createState() => _SecondUploadScreenState();
}

class _SecondUploadScreenState extends State<SecondUploadScreen> {
  List ingrediants = [1];
  List steps = [1];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Annuler",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: Secondary),
                            )),
                        Text(
                          "2/2",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: SecondaryText),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Détails",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        TextButton.icon(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(SecondaryText)),
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            label: const Text("Group"))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ingrediants.length,
                        itemBuilder: (context, index) =>
                            enterIngerediant(index)),
                    ingrediantsButton(),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "étapes",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                steps.add(step(1));
                              });
                            },
                            icon: const Icon(Icons.add))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: steps.length,
                      itemBuilder: (context, index) => step(index),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomButton(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          text: "Back",
                          color: form,
                          textColor: mainText,
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: CustomButton(
                                onTap: () {
                                  openDialog();
                                },
                                text: "Suivant")),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// enter engrediant section
  enterIngerediant(int index) {
    return Dismissible(
      key: GlobalKey(),
      direction: ingrediants.length > 1
          ? DismissDirection.endToStart
          : DismissDirection.none,
      onDismissed: (direction) {
        setState(() {
          ingrediants.removeAt(index);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: CustomTextFildInUpload(
          radius: 30,
          hint: "Enter les détails",
          icon: Icons.drag_indicator,
        ),
      ),
    );
  }

  ingrediantsButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: () {
          setState(() {});
          ingrediants.add(enterIngerediant(1));
        },
        child: Container(
            alignment: Alignment.center,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: SecondaryText),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add),
                Text(
                  "détail",
                  style: TextStyle(
                      fontSize: 15,
                      color: mainText,
                      fontWeight: FontWeight.w500),
                )
              ],
            )),
      ),
    );
  }

  step(int index) {
    return Dismissible(
      direction: steps.length > 1
          ? DismissDirection.endToStart
          : DismissDirection.none,
      key: GlobalKey(),
      onDismissed: (d) {
        setState(() {
          steps.removeAt(index);
        });
      },
      child: Stack(
        children: [
          Column(
            children: [
              CustomTextFildInUpload(
                hint: "Parlez un peu de votre événement",
                icon: Icons.drag_indicator,
                maxLines: 4,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10, left: 35),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: form,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: mainText,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundColor: mainText,
              radius: 12,
              child: Text(
                "${index + 1}",
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future openDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                padding: const EdgeInsets.all(20),
                height: 400,
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/s.png"),
                    Text(
                      "Télécharger le succès",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      "Votre description a été téléchargée",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "Vous pouvez le voir dans votre profils",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreenn()));
                        },
                        text: "Retour à Home")
                  ],
                ),
              ),
            ));
  }
}
