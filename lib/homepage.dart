import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Touch To Control",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(
                    Object(
                      fileName: "assets/uploads_files_2941243_retrotv0319.obj",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
