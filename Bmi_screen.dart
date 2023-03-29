import 'dart:math';

import 'package:application/moduals/Result/Result_screen.dart';
import 'package:application/shared/blocBmiscreen/Bmistates.dart';
import 'package:application/shared/blocBmiscreen/cubiit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_screen/cubit_Screen/cubit.dart';

class Bmi_screen extends StatelessWidget
{



  @override
  Widget build(BuildContext context) {

    return BlocProvider(

      create: (BuildContext context) => CubitBmi(),
      child: BlocConsumer<CubitBmi , Bmistates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          CubitBmi cool = CubitBmi.get(context);
          return Scaffold(
              appBar:AppBar(
                title: const Text('BMI calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                  ),),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                cool.ismalestate2();
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0,),
                                    color: cool.isMale ? Colors.blue : Colors.grey[400],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment .center,
                                    children: [

                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          color: Colors.deepOrange,
                                        ),
                                        child: const Image(image: AssetImage('assets/images/1340619.png'),
                                          height: 90.0,
                                          width: 90.0,
                                        ),
                                      ),
                                      const SizedBox(height: 15.0,),
                                      const Text('Male',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),),

                                    ],
                                  )
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.0,),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                cool.ismalestate();
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0,),
                                    color:!cool.isMale ? Colors.blue : Colors.grey[400],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          color: Colors.deepOrange,
                                        ),
                                        child: const Image(image: AssetImage('assets/images/R.png'),
                                          height: 90.0,
                                          width: 90.0,
                                        ),
                                      ),
                                      const SizedBox(height: 15.0,),
                                      const Text('Female',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),),

                                    ],
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: Colors.grey[400],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('HEIGT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0
                                ),),
                              const SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline:TextBaseline.alphabetic,
                                children: [
                                  Text('${cool.heigt.round()}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0
                                    ),),
                                  const Text('CM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),),

                                ],
                              ),
                              Slider(value: cool.heigt,
                                max: 220,
                                min: 80,

                                onChanged:(value) {
                                  cool.vlueslider(value);

                                },),
                            ],
                          )
                      ),
                    ),


                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0,),
                                  color: Colors.grey[400],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment .center,
                                  children: [
                                    Text('WEIGHT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Colors.grey[700]
                                      ),
                                    ),
                                    const SizedBox(height: 8.0,),
                                    Text('${cool.weight.round()}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0
                                      ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        FloatingActionButton(onPressed: () {
                                          cool.minusweight();

                                        },
                                          mini: false,
                                          child:const Icon(
                                              Icons.remove
                                          ) ,
                                        ),
                                        const SizedBox(width: 20.0,),
                                        FloatingActionButton(onPressed: (){
                                          cool.plusweight();
                                        },
                                          mini:false,
                                          child:
                                          const Icon(Icons.add),
                                        )
                                      ],
                                    )

                                  ],
                                )
                            ),
                          ),
                          const SizedBox(width: 15.0,),
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0,),
                                  color: Colors.grey[400],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('AGE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Colors.grey[700]
                                      ),
                                    ),
                                    const SizedBox(height: 8.0,),
                                    Text('${cool.age}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0
                                      ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        FloatingActionButton(onPressed: () {
                                          cool.minusage();

                                        },
                                          heroTag: 'age-',
                                          mini: false,
                                          child: Icon(Icons.remove),
                                        ),
                                        const SizedBox(width: 20.0,),
                                        FloatingActionButton(onPressed: () {
                                          cool.plusage();
                                        },

                                          heroTag: 'age+',
                                          mini: false,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )

                                  ],
                                )
                            ),
                          ),

                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.red,
                    height: 50.0,
                    child: MaterialButton(onPressed: () {
                      double Result = cool.weight / pow(cool.heigt /100, 2);
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Resultshow(
                                age: cool.age,
                                isMale:cool.isMale ,
                                result: Result,
                              );
                            },)

                      );


                    },
                      child: Text('Calculate',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                    ),
                  ),
                ],
              )
          );
        },

      ),
    );
    }

  }







