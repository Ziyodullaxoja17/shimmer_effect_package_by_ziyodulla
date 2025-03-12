import 'package:flutter/material.dart';
import 'package:shimmer_container/shimmer_efffect_package_by_ziyodulla.dart';

void main() {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Example',
      home: Scaffold(
        appBar: AppBar(title: Text('Shimmer Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Basic Shimmer Effect"),
              SizedBox(height: 10),
              ShimmerContainer(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text("Customized Shimmer Effect"),
              SizedBox(height: 10),
              ShimmerContainer(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                duration: Duration(milliseconds: 1500),
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
