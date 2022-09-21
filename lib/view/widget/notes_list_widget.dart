import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget noteListWidget() {
  return (
      GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,

      ),
      itemBuilder: (context, i) {
        return RawScrollbar(
          isAlwaysShown: true,
          thickness: 2,
          thumbColor: Colors.tealAccent,
          radius: const Radius.circular(10),
          scrollbarOrientation: ScrollbarOrientation.left,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 20),
            separatorBuilder: (BuildContext context, int index) => Expanded(
              child: Card(
                margin: const EdgeInsets.only(left: 25),
                elevation: 10.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Expanded(
                      child: Row(
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue.withOpacity(0.4),
                              radius: 50,
                            ),
                            const Positioned(
                                top: 25,
                                left: 25,
                                child: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 50,
                                )),

                          ]),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Check Mail',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Write to the manager',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade400),
                                ),

                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8) , bottomRight:Radius.circular(8) )),
                                child: Center(child: const Text('12:00 AM',style: TextStyle(color: Colors.white))),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ),
            ),
            itemCount: 5,
          ),

        );
      }));
}
