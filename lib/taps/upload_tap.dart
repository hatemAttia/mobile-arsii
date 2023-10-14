
import 'package:arsi/core/route/colors.dart';
import 'package:arsi/nav/CustomSlider.dart';
import 'package:arsi/nav/custom_button.dart';
import 'package:arsi/nav/custom_text_fild_in_upload.dart';
import 'package:arsi/nav/second_upload_Screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class UploadTap extends StatelessWidget {
  const UploadTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Annuler",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Secondary),
                        ),
                      ),
                      Text(
                        "1/2",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: SecondaryText),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addCoverPhoto(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "nom de l'événement",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Enter le nom de l'événement",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Parlez un peu de votre événement",
                        maxLines: 4,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: const CustomSlider(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SecondUploadScreen()));
                          },
                          text: "Suivante")
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  addCoverPhoto() {
    return InkWell(
      onTap: () {
        // add image to firbase
      },
      // This is ana external package
      child: DottedBorder(
          dashPattern: [15, 5],
          color: outline,
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          child: SizedBox(
            width: double.infinity,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.photo,
                    size: 65,
                    color: Colors.grey,
                  ),
                  Text(
                    "Ajouter une photo d'événement",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text("Jusqu'à 12 mégapixels ")
                ],
              ),
            ),
          )),
    );
  }
}
