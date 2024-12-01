import 'package:flutter/material.dart';
import 'cholesterol.dart';

class diabetes extends StatefulWidget{
  diabetes({Key? key}) : super(key: key);
  @override
  State<diabetes> createState() => _diabetesState();
}

class _diabetesState extends State<diabetes>{
  List<String> sym=["poor vision","weight loss","dry mouth","Increased thirst", "Frequent urination", "Extreme hunger", "Blurry vision",
    "Slow-healing wounds", "Fatigue or tiredness"];
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;
  bool isChecked5=false;
  bool isChecked6=false;
  bool isChecked7=false;
  bool isChecked8=false;
  bool isChecked9=false;
  int count=0;

 String _result(int c) {
   String r;
   if (c==0) {
    r="No symptome selected";

   }
   else  if (c==1) {
     r="poucentage is 10%";

   }
   else  if (c==2) {
     r="poucentage is 20%";

   }

   else  if (c==3) {
     r="poucentage is 30%";

   }
   else  if (c==4) {
     r="poucentage is 40%";

   }
   else  if (c==5) {
     r="poucentage is 50%";

   }
   else  if (c==6) {
     r="poucentage is 60%";

   }

   else  if (c==7) {
     r="poucentage is 70%";

   }
   else  if (c==8) {
     r="poucentage is 80%";

   }
   else{
     r="poucentage is 100%";
   }
   return r;
 }

@override
  Widget build(BuildContext context) {

  return MaterialApp(
    home: Scaffold(
 body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: () {

                  Navigator.of(context).pop();

                },

                    child: const Icon(Icons.navigate_before, size: 50)

                ),
                SizedBox(width: 5.0,),
             Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text('Diabetes diagnose:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
             )
              ,

      SizedBox(width: 1.0,),
                  ElevatedButton(

                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => cholesterol()));
                      },
                      child: const Icon(Icons.navigate_next, size: 50))


              ],
            ),

            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[0],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked1, onChanged: (bool? value) {setState(() {
                  isChecked1 = value as bool;
                  if(isChecked1==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,)
              ,Text(sym[1],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
              Checkbox(value: isChecked2, onChanged: (bool? value) {setState(() {
                isChecked2 = value as bool;
                if(isChecked2==true){
                  count++;
                }
                else{
                  count--;
                }
              });}
              ),
              ]
             ),

              Row(
                children: [
                  SizedBox(width: 20,),
                  Text(sym[2],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                  Checkbox(value: isChecked3, onChanged: (bool? value) {setState(() {
                    isChecked3= value as bool;
                    if(isChecked3==true){
                      count++;
                    }
                    else{
                      count--;
                    }
                  });}
                  ),
                ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[3],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked4, onChanged: (bool? value) {setState(() {
                  isChecked4= value as bool;
                  if(isChecked4==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[4],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked5, onChanged: (bool? value) {setState(() {
                  isChecked5= value as bool;
                  if(isChecked5==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[5],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked6, onChanged: (bool? value) {setState(() {
                  isChecked6= value as bool;
                  if(isChecked6==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[6],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked7, onChanged: (bool? value) {setState(() {
                  isChecked7= value as bool;
                  if(isChecked7==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[7],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked8, onChanged: (bool? value) {setState(() {
                  isChecked8= value as bool;
                  if(isChecked8==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(sym[8],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                Checkbox(value: isChecked9, onChanged: (bool? value) {setState(() {
                  isChecked9= value as bool;
                  if(isChecked9==true){
                    count++;
                  }
                  else{
                    count--;
                  }
                });}
                ),
              ],
            ),

            const SizedBox(height: 50),
      Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(_result(count),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),


            const SizedBox(height: 10),



          ]
      ),
      ),
  )
  );
  }
}














