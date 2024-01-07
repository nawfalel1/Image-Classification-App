import 'package:flutter/material.dart';
import 'package:cnn_classification/MenuBarre.dart';
import 'package:cnn_classification/loadimage.dart';
import 'package:cnn_classification/loadimage2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const MenuBarre(),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/homePhoto.jpeg',
            height: 400, 
            width: 500, 
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Bienvenue sur notre application de deep learning choisissez le modele vous voulez utiliser depuis le menu',
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoadImage()),
                    );
                  },
                  child: Text('cnn model'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                   
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoadImage2()),
                    );
                  },
                  child: Text('Fashion mnist classification'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
