import 'package:flutter/material.dart';


 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'TEST';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ROOMMATE',
                  style: TextStyle(  		//define textstyle
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center, 	//alignment
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Signup',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ), 

            Container(
	       padding: const EdgeInsets.all(10),	
	     child: TextField(
  		decoration: InputDecoration(
    		border: OutlineInputBorder(),
    		labelText: 'Email/Phone number',
  		),
	       ),
	   ), 
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
           
	    Container(
		padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
		child: TextField(
  		obscureText: true,
  		decoration: InputDecoration(
		  border: OutlineInputBorder(),
		  labelText: 'Password',
  		 ),
	      ),
	    ),	 


	    	     Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    				//signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center, //setting alignment
            ),
		
            Container(
                height: 40,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () {
                    debugPrint(nameController.text);
                    debugPrint(passwordController.text);
                  },
                )
            ),
            
          ],
        ));
  }
}
