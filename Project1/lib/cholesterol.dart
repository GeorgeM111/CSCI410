import 'package:flutter/material.dart';
import 'anemia.dart';
class cholesterol extends StatefulWidget{
  cholesterol({Key? key}) : super(key: key);
  @override
  State<cholesterol> createState() => _cholesterolState();
}

class _cholesterolState extends State<cholesterol>{
  List<String> sym=["Yellow lumps near the eye",
    "Pale white ring around the eye",
    "Swellimgs made on the hand","Chest pain", "Leg pain"
    ,"Breath shortness"];
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;
  bool isChecked5=false;
  bool isChecked6=false;
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

    }  else  if (c==3) {
      r="poucentage is 40%";

    }
    else  if (c==4) {
      r="poucentage is 60%";

    }
    else  if (c==5) {
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
                              color: Colors.blue.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text('cholesterol diagnose:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      )
                      ,

                      SizedBox(width: 1.0,),
                      ElevatedButton(

                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => anemia()));
                          },
                          child: const Icon(Icons.navigate_next, size: 50))


                    ],
                  ),
                  SizedBox(height: 100,),
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






                  const SizedBox(height: 50),


                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
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
























