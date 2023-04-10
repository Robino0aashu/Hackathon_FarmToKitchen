import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  
  final _nameController=TextEditingController();
  final _emailController=TextEditingController();
  final _pwordController=TextEditingController();

  void loginfn(BuildContext ctx){
    Navigator.of(ctx).pushNamed('/mainSheet', arguments: {
      'name': _nameController.text,
      'email': _emailController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/download.jpg"),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Enter Name',
                ),
                controller: _nameController,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
              child: TextField(
                style: TextStyle(
                  height: 1.0,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Enter Email Address',
                ),
                controller: _emailController,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Enter Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.symmetric(vertical: 7.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  fixedSize: const MaterialStatePropertyAll(Size(329.0, 57.0)),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(2, 48, 71, 1),
                  ),
                ),
                onPressed: () {
                  loginfn(context);
                },
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}