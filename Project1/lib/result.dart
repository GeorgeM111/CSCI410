import 'package:flutter/material.dart';
 class result extends StatefulWidget{

   result({Key? key}) : super(key: key);


   @override
  State<result> createState() => _resultState();
 }
 class  _resultState extends State<result>{
   final TextEditingController _feedbackController = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Feedback"),
         backgroundColor: Colors.purple,
       ),
       body:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               "We value your feedback!",
               style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 color: Colors.purple,
               ),
             ),
             SizedBox(height: 20),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.purple.withOpacity(0.5),
                     spreadRadius: 5,
                     blurRadius: 10,
                     offset: Offset(0, 3), // changes position of shadow
                   ),
                 ],
               ),
               child: TextField(
                 controller: _feedbackController,
                 maxLines: 5,
                 decoration: InputDecoration(
                   hintText: "Enter your feedback here...",
                   hintStyle: TextStyle(color: Colors.grey),
                   contentPadding: EdgeInsets.symmetric(
                     horizontal: 20,
                     vertical: 15,
                   ),
                   border: InputBorder.none,
                 ),
                 style: TextStyle(fontSize: 16),
               ),
             ),
             SizedBox(height: 20),
             Center(
               child: ElevatedButton(
                 onPressed: () {
                   final feedback = _feedbackController.text;
                   if (feedback.isEmpty) {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text("Please enter some feedback!"),
                       ),
                     );
                   } else {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         content: Text("Thank you for your feedback!"),
                       ),
                     );
                     _feedbackController.clear();
                   }
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.purple,
                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                 child: Text(
                   "Submit",
                   style: TextStyle(fontSize: 18, color: Colors.white),
                 ),
               ),
             ),
           ],
         ),

     );
  }
 }