
import 'package:arsi/feature/profile/edit_profile.dart';
import 'package:arsi/feature/screens/mobile_layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arsi/core/theme/app_color.dart';
import 'package:arsi/feature/home/presentation/widget/for_you_destination_widget.dart';
import 'package:arsi/feature/home/presentation/widget/popular_destination_widget.dart';



final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

 
class HomeScreen extends StatelessWidget {
  
  
   const HomeScreen({super.key, required this.title});

  final String title;

  


  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
       
      key: _globalKey,
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                   Padding(
                padding: const EdgeInsets.only(top: 80, left: 5, right: 5),
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
                           
              
                  

                     // decoration: BoxDecoration(
                       //// image: const DecorationImage(
///image: AssetImage(
//"assets/amira.jpg",
                         // ),
                        
                        ),
                         
//shape: BoxShape.circle,
                       // border: Border.all(),
                        
                     
                    const SizedBox(width: 16),
                    
                    const Expanded(child: SizedBox()),
                   // const Icon(
                     // Icons.notifications_none_rounded,
                     // size: 32,
                    //),
                  ],
                ),
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width - 48,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.all(24),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(CupertinoIcons.search),
                    const SizedBox(width: 8),
                    Text(
                      "Recherche une Activité, événement,Opportunités, etc.",
                      style: Theme.of(context).textTheme.bodySmall,
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
          child: const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
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
                    
                    SizedBox(
                      height: 30,
                    ),
                    Row(
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
                    

                    SizedBox(
                      height: 35,
                    ),
                   
                   
                    DrawerItem(
                      title: 'Account',
                      icon: Icons.key,index: 1,
                      
                    ),
                                          
                    DrawerItem(title: 'Chats', icon: Icons.chat_bubble,index: 2, ),
                    
                  
                    DrawerItem(
                        title: 'Notifications', icon: Icons.notifications,index: 3,),
                    DrawerItem(
                        title: 'Data and Storage', icon: Icons.storage,index: 4,),
                    DrawerItem(title: 'Help', icon: Icons.help,index:5 ,),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    DrawerItem(
                        title: 'Invite a friend', icon: Icons.people_outline,index: 6,),
                  ],
                ),
                DrawerItem(title: 'Log out', icon: Icons.logout,index: 7,)
              ],
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
    
    
    return InkWell(
      
    onTap: () { Navigator.push ( context, MaterialPageRoute (builder: (context) => const MobileLayoutScreen()));},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
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



