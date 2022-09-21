import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_mina_task/style/colors.dart';
import 'package:pro_mina_task/view/screens/new_task_screen.dart';
import 'package:pro_mina_task/view/widget/notes_list_widget.dart';

import '../../componanes/Design.dart';
import '../../componanes/componanes.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

//#3088CC
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                CustomPaint(
                  size: const Size(double.infinity, double.infinity),
                  painter: RPSCustomPainter(),

                ),

                Stack(
                  children: [
                    CustomPaint(
                      size: const Size(double.infinity, double.infinity),
                      painter: SecCustomPainter(),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                 Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(backgroundColor: Colors.white ,child: Icon(Icons.person_outline,color:mainColor.withOpacity(0.6)),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/align-leftt.png',
                        height: 30, width: 30),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/bell-free-icon-font.png',
                        height: 30, width: 30),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text('My Task',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          navigateTo(
                            context,NewTask()
                          );
                        },
                        child: const Icon(Icons.add, size: 25)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Today',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('Monday,1 june',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: mainColor.withOpacity(0.1),
                    child: DatePicker(
                      DateTime.now(),
                      height: 75,
                      width: 70,
                      daysCount: 30,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: mainColor,
                      selectedTextColor: Colors.white,
                      deactivatedColor: Colors.grey,
                      dateTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Expanded(
                  flex: 4,
                  child: noteListWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
