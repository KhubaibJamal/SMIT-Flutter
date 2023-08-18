import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController todoController = TextEditingController();
  List todoList = [
    "do flutter practice ",
    "bye laptop",
    "Fluttering",
    "Meeting at 8 pm",
  ];

  // method for add items to the list
  void saveToList() {
    setState(() {
      todoList.add(todoController.text);
      todoController.clear();
      // dismiss on screen keyboard
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  // method to delete items from the list
  void deleteFromList(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Todo",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(12),
                        height: height * 0.17,
                        width: width,
                        decoration: BoxDecoration(
                          color: const Color(0xffA2678A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${todoList[index]}",
                              style: const TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    deleteFromList(index);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                ),
                                // edit icon button
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.edit,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                          hintText: "Enter ToDo Here",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        saveToList();
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Color(0xff3F1D38),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
