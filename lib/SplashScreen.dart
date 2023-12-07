import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_assessment/navbar.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
@override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Nav();
      }));
    });
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Color.fromARGB(255, 194, 196, 207)],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
          ),
        ),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
            CupertinoIcons.shopping_cart,
            size: 80,
            color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Starbhak Mart',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 32,
              ),
            )
          ],
        ),

      ),
    );
  }
}