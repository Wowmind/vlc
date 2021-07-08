import 'package:flutter/material.dart';
import 'package:vlc/AllFile.dart';

class DrawerScreen extends StatefulWidget {

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),

            Text('Media Library', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
            SizedBox(height: 4,),

            Divider(height: 1, thickness: 1,color: Colors.white,),
            SizedBox(height: 6,),

            GestureDetector(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(Icons.add_to_photos_sharp, size:35, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text('All Files', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
                ],
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.music_video_rounded, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Text('Music Albums', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.live_tv_outlined, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Text('Tv Shows', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Text('Network', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
            SizedBox(height: 4,),

            Divider(height: 1, thickness: 1,color: Colors.white,),
            SizedBox(height: 6,),

            Row(
              children: [
                Icon(Icons.home_outlined, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Text('Local Network', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
               Image.asset('assets/globe.png', fit: BoxFit.cover, color: Colors.white,scale: 1.5,),
                SizedBox(width: 15,),
                Text('NetworK Stream', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.arrow_downward_outlined, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Text('Downloads', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.wifi_rounded, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sharing via WiFi', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),),
                    Text('No active WiFi connection', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Image.asset('assets/cloud.png', fit: BoxFit.cover, color: Colors.white,scale: 1.5,),
                SizedBox(width: 15,),
                Text('Cloud Services', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
            SizedBox(height: 4,),

            Divider(height: 1, thickness: 1,color: Colors.white,),
            SizedBox(height: 6,),

            Row(
              children: [
                Icon(Icons.settings, size:35, color: Colors.white,),
                SizedBox(width: 15,),
                Text('Settings', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Image.asset('assets/vlc.png', fit: BoxFit.cover, color: Colors.white,scale: 1.5,),
                SizedBox(width: 15,),
                Text('Cloud Services', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: 20,),










          ],
        ),
      ),

    );
  }
}
