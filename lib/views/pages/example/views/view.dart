import 'package:sample_getx/views/pages/example/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ExampleView extends GetView<ExampleController> {
  const ExampleView({super.key});


  @override
  Widget build(final BuildContext context) => Scaffold(
      body: Container(color: Colors.red,),
    );
}
