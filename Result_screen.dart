import 'package:application/moduals/users/UsersScreen.dart';
import 'package:application/moduals/login/login_desgin.dart';
import 'package:flutter/material.dart';

class Resultshow extends StatelessWidget {
  final double result;
  final bool isMale;
  final double age;

   Resultshow({required this.age, required this.isMale, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: const Text(
            'BMI',
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bm(result.ceilToDouble()),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      children: [
                        const Text(
                          "BMI",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        check(result)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 3.0,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 17.0,
                ),
                const Text(
                  'Information',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: const [
                      Text(
                        'underweight',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        'normal',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        'overweight',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Container(
                        height: 3.0,
                        width: 90.5,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 3.0,
                        width: 120,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 3.0,
                        width: 130.0,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: const [
                      Text(
                        '16.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        '18.5',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(
                        '25.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(
                        '40.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                      width: double.infinity,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey,
                      ),
                      child: Slider(
                        value: result,
                        max: 40.0,
                        min: 10.0,
                        activeColor: const Color.fromARGB(700, 873, 984, 300),
                        onChanged: (value) {
                          setState(() {
                            return value;
                          });

                          print(result);
                        },
                      )
                )
                )
              ],
            ),
          ),
        ));
  }

  check(Result) {
    if (Result > 25.0) {
      return const Text(
        'overweight',
        style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.w900, fontSize: 15.0),
      );
    } else if (Result < 18.0) {
      return const Text(
        ' underweight',
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 15.0),
      );
    } else {
      return const Text(
        'normal',
        style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.w900,
            fontSize: 15.0),
      );
    }
  }

  bm(Result) {
    if (result > 25.0) {
      return Text(
        '${Result}',
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.w900, fontSize: 60.0),
      );
    } else if (Result < 18.0) {
      return Text(
        '${Result}',
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 60.0),
      );
    } else {
      return Text(
        '${Result}',
        style: const TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.w900,
            fontSize: 60.0),
      );
    }
  }


  }


void setState(double Function() param0) {}
