import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<HomeController>(context, listen: true);
    _showErrorSnackbar(controller);
    return Scaffold(appBar: AppBar(), body: _listView(controller));
  }

  Widget _errorText(HomeController controller) {
    return Center(child: Text(''));
  }

  void _showErrorSnackbar(HomeController controller) {}

  Widget _listView(HomeController controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    );
  }
}
