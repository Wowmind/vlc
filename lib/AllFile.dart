import 'package:flutter/material.dart';

class AllFiles extends StatefulWidget {

  @override
  _AllFilesState createState() => _AllFilesState();
}

class _AllFilesState extends State<AllFiles> {
  double xOffset = 0;
  double yOffset = 0;
  double scalex = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scalex), 
        duration: Duration(milliseconds: 80),
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  isDrawerOpen?Padding(
                      padding: const EdgeInsets.only(top: 25, left: 10),
                      child : GestureDetector(
                        onTap: (){

                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scalex = 1;
                            isDrawerOpen = false;
                          });
                        },

                        child: Image.asset(
                            'assets/vlc.png',
                            fit: BoxFit.cover),
                      ))

                  :Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                        child : GestureDetector(
                          onTap: (){

                            setState(() {
                              xOffset = 280;
                              yOffset = 100;
                              scalex = 0.7;
                              isDrawerOpen = true;
                            });
                          },

                          child: Image.asset(
                              'assets/vlc.png',
                              fit: BoxFit.cover),
                        )),

                  Padding(
                    padding: const EdgeInsets.only(top: 35,),
                    child: Text('All Files', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, right: 10),
                    child: Text('Edit', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),),
                  ),

                ],
            )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyItems('assets/originals.jpg', 'The Originals', '12 Episodes, 12 unread'),
                MyItems('assets/hero.jpg', 'Heroes', '10 Episodes, 10 unread'),
                MyItems('assets/imp.jpg', 'Impulse', '9 Episodes, 9 unread'),
                MyItems('assets/old.jpg', 'The Old Guard', '2:05:36 - 1024x430'),
                MyItems('assets/lost.jpg', 'Lost', '12 Episodes, 12 unread'),
                MyItems('assets/oct.jpg', 'October Faction', '11 Episodes, 11 unread'),
                MyItems('assets/out.jpg', 'The Outlander', '12 Episodes, 12 unread'),
              ],
            )
          ],
        ),
      ),
    
    );
  }
  Widget MyItems(String img, String name, String name2){
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Icon(Icons.live_tv, size: 90, color: Colors.white70,)),
          Text(name, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
          Text(name2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
        ],
      ),
    );
  }
}
