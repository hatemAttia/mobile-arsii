import 'package:arsi/core/route/colors.dart';
import 'package:arsi/nav/Custom_product_Item_widget.dart';
import 'package:arsi/nav/home_screenn.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScanUotputScreen extends StatefulWidget {
  ScanUotputScreen({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<ScanUotputScreen> createState() => _ScanUotputScreenState();
}

class _ScanUotputScreenState extends State<ScanUotputScreen> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    //Method for listening controller
    _controller.addListener(() {
      setState(() {});
    });
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreenn()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: mainText,
                    size: 20,
                  )),
              pinned: true,
              titleSpacing: 0,
              elevation: 0,
              toolbarHeight: 80,
              // Here we have created a conditional statement to chang the appearance of the appBar

              title: _controller.hasClients && _controller.offset > 250.0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage("assets/ev2.PNG"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    )
                  : SizedBox(),
              backgroundColor: Colors.white,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: CircleAvatar(
                          radius: 100,
                          backgroundImage:
                              AssetImage("assets/ev1.PNG")),
                    ),
                    Text(
                      "arsii epi",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 8,
                color: form,
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.5,
              children: List.generate(6, (index) => CustomProductItemWidget()),
            )
          ],
        ),
      ),
    ));
  }
}
