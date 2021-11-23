import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generatetasks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context , index) => tasksList[index].isLast! ? _buildAddTask(context , tasksList[index]) : _buildTask(context , tasksList[index])
      )
    );
  }

  Widget _buildTask(BuildContext context, Task task){
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: task.bgColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            task.iconsData,
            color: task.btnColor,
            size: 35,
          ),
          const SizedBox(height: 30),
          Text(
            task.title!,
            style: TextStyle(
              color: Colors.blueGrey.shade900,
              fontSize: 18,
              fontWeight: FontWeight.w800
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildTaslStatus(task.btnColor! , task.iconColor! , '${task.left} task'),
              const SizedBox(width: 5),
              _buildTaslStatus(Colors.white , task.iconColor! , '${task.done} done'),
            ],
          )

        ],
      ),
    );
  }

  Widget _buildAddTask(BuildContext context , Task task){
    return DottedBorder(
      borderType: BorderType.RRect,
      strokeWidth: 2,
      color: Colors.grey,
      dashPattern: const [10 , 10],
      radius: const Radius.circular(20),
      child: Center(
        child: Text(
          '+ Add',
          style: TextStyle(
            color: Colors.blueGrey.shade900,
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),
        ),
      ),
    );
  }

  Widget _buildTaslStatus(Color bgColor , Color txtColor, String text){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        text,
        style: TextStyle(
          color: txtColor
        ),
      ),
    );
  }
  
}
