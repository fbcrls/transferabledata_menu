import 'package:flutter/material.dart';
import 'package:transferabledata_menu/nextscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter Transferable Data'),
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final TextEditingController controller = TextEditingController();
  String? name;

  void dataChecker() {
    if (name == null) {
      name = 'nothing';
    }
  }

  @override
  void initState() {
    super.initState();
    dataChecker();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //textfield
          TextField(
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Enter your name',
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //button to submit data
          Container(
            color: Colors.blue,
            height: 50,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    name = controller.text;
                  });
                },
                child: Text(
                  'Submit Data',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
          SizedBox(
            height: 50,
          ),

          //Display data
          Text(
            'You have entered $name',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),

          //Transfer data to next page
          Container(
            color: Colors.red,
            height: 50,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => nextscreen(
                              name: name,
                            )),
                  );
                },
                child: Text(
                  'Transfer to next page!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
