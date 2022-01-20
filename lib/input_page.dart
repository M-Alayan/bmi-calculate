import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
         Expanded(child:Row(
           children: [
             Expanded(
               child: Reusablecode(colour: Color(0xFF1D1E33),
                 cardchild:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(FontAwesomeIcons.mars,size: 18),
                     SizedBox(height: 15),
                     Text("MALE",style: TextStyle(fontSize: 18,color: Color(0xFF8D8E98),),),
                   ],
                 ),
               ),
             ),
             Expanded(
               child: Reusablecode(colour: Color(0xFF1D1E33),),
             ),
           ],
         ), ),

         Expanded(child: Row(
           children: [
             Expanded(child: Reusablecode(colour: Color(0xFF1D1E33),),),
           ],
         ),),
         Expanded(child: Row(
           children: [
             Expanded(child: Reusablecode(colour: Color(0xFF1D1E33),),),
             Expanded(child: Reusablecode(colour: Color(0xFF1D1E33),),),
           ],
         ),),
        ],
      ),


    );
  }
}

class Reusablecode extends StatelessWidget {
   Reusablecode({@required this.colour,this.cardchild});
final Color colour;
final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

