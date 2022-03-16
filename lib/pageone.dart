import 'package:flutter/material.dart';

import 'sectionone.dart';

class Pageone extends StatefulWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                collapsedHeight: 282,
                expandedHeight: 282,
                flexibleSpace: Sectionone(),
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 500,
              color: Colors.blue,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 110,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Center(
                        child: Text(
                          "This is grid",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Colors.black,
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
