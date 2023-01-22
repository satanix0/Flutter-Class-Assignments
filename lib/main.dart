// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'assignments/4_single_child_scroll_view.dart';
import 'package:row_col_assignment/assignments/3_positined_demo.dart';
import 'assignments/2_row_col_assign.dart'; //Row Column Assignment
import 'assignments/1_row_col_demo.dart';
import 'assignments/5_stack_ui.dart'; // Row Column demo

void main() {
  runApp(const Assignments());
}

// return the class Ctor from the build function
class Assignments extends StatelessWidget {
  const Assignments({super.key});

  @override
  Widget build(BuildContext context) {
    return const StackUI();
  }
}
