import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? status;
  String? newsataus;
  @override
  Widget build(BuildContext context) {
    print(status);
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            showdailog(context);
          },
          child: const Text("show"),
        ),
      ),
    );
  }

  void showdailog(context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SizedBox(
                height: status == "Completed" ? 700 : 500,
                width: 500,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Case Status",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            size: 40,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    RadioListTile(
                      title: const Text("Investigation open"),
                      value: "Investigation open",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Confirmed as unusual"),
                      value: "Confirmed as unusual",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Under review"),
                      value: "Under review",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Completed"),
                      value: "Completed",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    status == 'Completed'
                        ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Case Status",
                          style: TextStyle(
                              fontSize: 14, color:Colors.grey),
                        ),
                        RadioListTile(
                          activeColor:Colors.purple,
                          title: const Text("Confirm as fraudalent"),
                          value: "Confirm as fraudalent",
                          groupValue: newsataus,
                          onChanged: (value) {
                            setState(() {
                              newsataus = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          activeColor: Colors.purple,
                          title: const Text("Verify as legitimate"),
                          value: "Verify as legitimate",
                          groupValue: newsataus,
                          onChanged: (value) {
                            setState(() {
                              newsataus = value.toString();
                            });
                          },
                        ),
                        const Text(
                          "Remark:",
                          style: TextStyle(
                              fontSize: 14, color:Colors.grey),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    )
                        : Container(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "cancel",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ]),
                ),
              );
            }),
      ),
    );
  }
}

