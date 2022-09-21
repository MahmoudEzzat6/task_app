import 'package:flutter/material.dart';
import 'package:pro_mina_task/style/colors.dart';

import '../../componanes/componanes.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  State<NewTask> createState() => _NewTaskState();
}

var filter = '';
bool isSelected = true;

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    var taskNameController = TextEditingController();
    var taskDescriptionController = TextEditingController();
    var dateController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: const Icon(Icons.arrow_back_ios),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/align-leftt.png',
                          height: 30, width: 30),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Text('Create New Task',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      const Spacer(),
                      Image.asset('assets/images/clipboardList.png',
                          height: 30, width: 30),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultTextField(
                    label: 'Task Name',
                    controller: taskNameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text('Select Category',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                      Spacer(),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  filterChipWidget(),
                  defaultTextField(
                    controller: dateController,
                    type: TextInputType.datetime,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.parse('2028-12-31'),
                      ).then((value) {
                        dateController.text = value!.toLocal().toString();
                      });
                    },
                    label: 'Date',
                  ),
                  defaultTextField(
                    label: 'Description',
                    controller: taskDescriptionController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 70),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: const Text(
                        'Create Task',
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget filterChipWidget() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ChoiceChip(
            backgroundColor: Colors.white,
            selectedColor: isSelected ? mainColor : Colors.white,
            disabledColor: Colors.white,
            label: const Text(
              'Development',
            ),
            labelStyle: TextStyle(
                color: (filter == 'Development') ? Colors.white : Colors.blue),
            selected: (filter == 'Development') ? true : false,
            side: const BorderSide(color: mainColor),
            onSelected: (bool value) {
              setState(() {
                filter = 'Development';
              });
            },
          ),
          const SizedBox(
            width: 5,
          ),
          ChoiceChip(
            backgroundColor: Colors.white,
            selectedColor: isSelected ? mainColor : Colors.white,
            disabledColor: Colors.white,
            label: const Text(
              'Research',
            ),
            labelStyle: TextStyle(
                color: (filter == 'Research') ? Colors.white : Colors.blue),
            selected: (filter == 'Research') ? true : false,
            side: const BorderSide(color: mainColor),
            onSelected: (bool value) {
              setState(() {
                filter = 'Research';
              });
            },
          ),
          const SizedBox(
            width: 5,
          ),
          ChoiceChip(
            backgroundColor: Colors.white,
            selectedColor: isSelected ? mainColor : Colors.white,
            disabledColor: Colors.white,
            label: const Text(
              'Design',
            ),
            labelStyle: TextStyle(
                color: (filter == 'Design') ? Colors.white : Colors.blue),
            selected: (filter == 'Design') ? true : false,
            side: const BorderSide(color: mainColor),
            onSelected: (bool value) {
              setState(() {
                filter = 'Design';
              });
            },
          ),
          const SizedBox(
            width: 5,
          ),
          ChoiceChip(
            backgroundColor: Colors.white,
            selectedColor: isSelected ? mainColor : Colors.white,
            disabledColor: Colors.white,
            label: const Text(
              'Backend',
            ),
            labelStyle: TextStyle(
                color: (filter == 'Backend') ? Colors.white : Colors.blue),
            selected: (filter == 'Backend') ? true : false,
            side: const BorderSide(color: mainColor),
            onSelected: (bool value) {
              setState(() {
                filter = 'Backend';
              });
            },
          ),
        ],
      ),
    );
  }
}
