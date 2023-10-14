
import 'package:arsi/core/route/colors.dart';
import 'package:arsi/feature/profile/edit_profile.dart';
import 'package:arsi/feature/screens/mobile_layout_screen.dart';
import 'package:arsi/nav/home_screenn.dart';
import 'package:arsi/nav/scan_output_screen.dart';
import 'package:arsi/taps/notifcation_tap.dart';
import 'package:arsi/taps/profile_tap.dart';
import 'package:arsi/taps/scan_tap.dart';
import 'package:arsi/taps/upload_tap.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arsi/core/theme/app_color.dart';
import 'package:arsi/feature/home/presentation/widget/for_you_destination_widget.dart';
import 'package:arsi/feature/home/presentation/widget/popular_destination_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

 
class HomeScreen extends StatelessWidget {
   
  
   const HomeScreen({super.key, required this.title});

  final String title;

  


  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Colors.grey[50],
        body: 
        SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          // padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Row(
//                   children: [
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        IconButton(
//                            onPressed: () {
//                              _globalKey.currentState!.openDrawer();
//                            },
//                            icon: const Icon(
//                              Icons.menu,
//                              color: Colors.black,
//                            )),
//                      ],
//               ),
//
// //shape: BoxShape.circle,
//                        // border: Border.all(),
//
//
//                     const SizedBox(width: 16),
//
//                     const Expanded(child: SizedBox()),
//                    // const Icon(
//                      // Icons.notifications_none_rounded,
//                      // size: 32,
//                     //),
//                   ],
//                 ),
//               ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width - 48,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.only(left: 24,right: 24,bottom: 10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(CupertinoIcons.search),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        "Recherche une Activité, événement,Opportunités, etc.",
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[100],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Médias",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[100],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Nos Partenaires",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
  onTap: () {
   Navigator.push ( context, MaterialPageRoute (builder: (context) => const MobileLayoutScreen()));
  },
                    child:Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[100],
                      ),
                      alignment: Alignment.center,

                      child:
                      Text(
                        "Les Formations",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),

                      ),
                    )
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Les Opportunités",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 16),
              const PopularDestinationWidget(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Les Evénements",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Voir touts",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColor.primaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const ForYouDestinationWidget(),
            ],
          ),
        ),
        drawer: Drawer(
          width: 275,
          elevation: 30,
          backgroundColor: Color(0xF3393838),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
             
          child: Container(
            decoration: const BoxDecoration(
                
                borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20)
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          UserAvatar(filename: 'amira.jpg'),
                          
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Amira',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                       InkWell(
                        onTap: (){
                        //CHANGE THE MobileLayoutScreen WITH THE CORRECT METHOD
                          Navigator.push ( context, MaterialPageRoute (builder: (context) => ProfileTap()));

                        },
                      child: const DrawerItem(
                        title: 'Account',
                        icon: Icons.key,index: 1,
                        
                      ),
                       ),
                      InkWell(
                        onTap: (){

                          Navigator.push ( context, MaterialPageRoute (builder: (context) => const MobileLayoutScreen()));

                        },
                          child: const DrawerItem(title: 'Chats', icon: Icons.chat_bubble,index: 2, )
                      ),


                      InkWell(
                        onTap: (){
                        //CHANGE THE MobileLayoutScreen WITH THE CORRECT METHOD
                          Navigator.push ( context, MaterialPageRoute (builder: (context) => NotitcationTap()));

                        },
                        child: const DrawerItem(
                            title: 'Notifications', icon: Icons.notifications,index: 3,),
                      ),

                        InkWell(
                        onTap: (){
                        //CHANGE THE MobileLayoutScreen WITH THE CORRECT METHOD
                          Navigator.push ( context, MaterialPageRoute (builder: (context) => const HomeScreenn()));

                        },
                        child:const DrawerItem(
                          title: 'Data and Storage', icon: Icons.storage,index: 4,),),
                      const DrawerItem(title: 'Help', icon: Icons.help,index:5 ,),
                      const Divider(
                        height: 35,
                        color: Colors.green,
                      ),
                      const DrawerItem(
                          title: 'Invite a friend', icon: Icons.people_outline,index: 6,),
                    ],
                  ),
                  const DrawerItem(title: 'Log out', icon: Icons.logout,index: 7,)
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}


  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
          height: 20,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }


class DrawerItem extends StatelessWidget {
  
  final int index;
  final String title;
  final IconData icon;
  
  const DrawerItem({super.key, 
    
    required this.title,
    required this.icon, 
    required this.index,
    
    
  });
  
  

  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );

  }
  
   
}

class UserAvatar extends StatelessWidget {
  
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
    onTap: () {
      
     Navigator.push ( context, MaterialPageRoute (builder: (context) => const EditProfilePage()));
    },
  
      
      child: CircleAvatar(
     
      backgroundColor: Colors.white,
        radius: 29,
        backgroundImage: Image.asset('assets/amira.jpg').image,
      ),
    );
  }
}
  class HomeScreenn extends StatefulWidget {
  const HomeScreenn({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenn> createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  int _currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
// we ut the bottomm vavigation bar in a sepatatre method
      bottomNavigationBar: bottomNavigationBar(),
      // we put the foationAction Botton in a sepatatre method
      
      // here is the location of the floating action button
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: taps[_currenIndex],
    ));
  }

// list of taps
  List<Widget> taps = [
    const HomeScreen(title: '',),
    const UploadTap(),
    const ScanTap(),
    NotitcationTap(),
    ProfileTap(),
  ];

  bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currenIndex,
      fixedColor: primary,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (int index) {
        if (index == 0) {
          setState(() {
            _currenIndex = index;
          });
        } else if (index == 1) {
          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UploadTap()));
          });
        } else if (index == 2) {
          setState(() {});
        } else if (index == 3) {
          setState(() {
            _currenIndex = index;
          });
        } else if (index == 4) {
          setState(() {
            _currenIndex = index;
          });
        }
      },
      unselectedItemColor: SecondaryText,
      items: items,
      type: BottomNavigationBarType.fixed,
    );
  }

  // list of items
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.edit),
      label: "Upload",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        IconlyBold.scan,
        color: Colors.white,
      ),
      label: "Scan",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.notification), 
      label: "Notification",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.profile),
      label: "Profile",
    ),
  ];

  
 floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          showModalBottomSheet(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              context: context,
              builder: (context) => _bottomSheet(context));
        });
      },
      backgroundColor: primary,
      elevation: 0,
      child: const Icon(
        IconlyBold.scan,
      ),
    );
  }

_bottomSheet(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 70,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            title: Text(
              "Choosr one option",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: mainText),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScanUotputScreen(
                                title: "arsiii",
                              )));
                },
                child: Container(
                  height: 170,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: outline),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/image 6.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "arsii",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ScanUotputScreen(title: "Ingredient")));
                },
                child: Container(
                  height: 170,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: outline),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/image 7.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ingredient",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}



