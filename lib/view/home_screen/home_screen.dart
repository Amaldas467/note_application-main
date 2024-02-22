import 'package:flutter/material.dart';
import 'package:note_application/view/home_screen/widgets/custom_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
            scrollControlDisabledMaxHeightRatio: .6,
            context: context,
            builder: (context) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                color: Color.fromARGB(255, 247, 244, 244),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 174, 172, 172),
                        label: Text("Title"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        //fillColor: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 174, 172, 172),
                        label: Text("Description"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 174, 172, 172),
                        label: Text("Date"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) => Container(
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 209, 249, 210),
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 40,
                                child: Center(child: Text("Cancel")),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              child: Center(child: Text("Save")),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "NOTE PAD",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => CustomWidgets(),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 2),
    );
  }
}
