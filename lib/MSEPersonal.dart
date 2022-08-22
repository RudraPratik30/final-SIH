import 'package:flutter/material.dart';

class MSEPersonal extends StatefulWidget {
  const MSEPersonal({Key? key}) : super(key: key);

  @override
  State<MSEPersonal> createState() => _MSEPersonal();
}

class _MSEPersonal extends State<MSEPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MSE Profile"),
          backgroundColor: Colors.blueAccent,
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.share),
          //     tooltip: 'Show Snack',
          //     onPressed: () {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Text('This is a snackbar')));
          //     },
          //   ),
          // ],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: const [
                                Text(
                                  "Hemraj Raut",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "MSE No. : xxxxxxxx",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Colors.grey,
                              foregroundImage: AssetImage(
                                "assets/user.jpg",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Panchayat : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  "Divankhed",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Block : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  "Teosa",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "District : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  "Gondia",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "State : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  "Maharashtra",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  /** Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                      ),
                      child: Padding(
                      padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 20.0,
                      ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                      Text(
                      "Block : ",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "District : ",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "Panchayat : ",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "State : ",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                      )
                      ],
                      ),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                      Text(
                      "Teosa",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      ),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "Gondia",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      ),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "Divankhed",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      ),
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Text(
                      "Maharashtra ",
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      ),
                      )
                      ],
                      ),
                      ],
                      ),
                      ),
                      ),
                      ), */
                  const SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // child: TextFormField(
                      //   style: const TextStyle(
                      //     fontSize: 18.0,
                      //   ),
                      // child: FlatButton(
                      //   onPressed: () => {
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(
                      //     //     builder: (context) => const EmpImgPage(),
                      //     //   ),
                      //     // )
                      //   },
                      //   child: const Center(
                      //     child: Icon(
                      //       Icons.work_history,
                      //       color: Colors.white,
                      //     ),
                      //
                      //     // child: Text(
                      //     //   'Work Book',
                      //     //   style: TextStyle(
                      //     //     color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,),
                      //     // ),
                      //   ),
                      // ),
                      // decoration: const InputDecoration(
                      //   icon: Icon(
                      //     Icons.work,
                      //     color: Colors.grey,
                      //   ),
                      //   border: InputBorder.none,
                      //   hintText: 'Enter Username',
                      // ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 20.0,
                  //   ),
                  //   child: Container(
                  //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //     decoration: BoxDecoration(
                  //       color: Colors.blueAccent[200],
                  //       border: Border.all(color: Colors.white),
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     // child: TextFormField(
                  //     //   style: const TextStyle(
                  //     //     fontSize: 18.0,
                  //     //   ),
                  //     child: FlatButton(
                  //       onPressed: () => {
                  //         // Navigator.push(
                  //         //   context,
                  //         //   MaterialPageRoute(
                  //         //     builder: (context) => const MSEProfile(),
                  //         //   ),
                  //         // )
                  //       },
                  //       child: const Center(
                  //         child: Icon(
                  //           Icons.group,
                  //           color: Colors.white,
                  //         ),
                  //
                  //         // child: Text(
                  //         //   'Work Book',
                  //         //   style: TextStyle(
                  //         //     color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,),
                  //         // ),
                  //       ),
                  //     ),
                  //     // decoration: const InputDecoration(
                  //     //   icon: Icon(
                  //     //     Icons.work,
                  //     //     color: Colors.grey,
                  //     //   ),
                  //     //   border: InputBorder.none,
                  //     //   hintText: 'Enter Username',
                  //     // ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 20.0,
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       RaisedButton(
                  //         onPressed: () => {print("Worker clicked")},
                  //         color: Colors.white70,
                  //         child: Column(
                  //           children: [
                  //             Image.asset(
                  //               "assets/worker.png",
                  //               height: 75.0,
                  //             ),
                  //             const SizedBox(
                  //               height: 10.0,
                  //             ),
                  //             const Text(
                  //               "Workers",
                  //               style: TextStyle(
                  //                 fontFamily: 'Poppins',
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       RaisedButton(
                  //         color: Colors.white70,
                  //         onPressed: () => {print("Attendance clicked")},
                  //         child: Column(
                  //           children: [
                  //             Image.asset(
                  //               "assets/attendance.png",
                  //               height: 75.0,
                  //             ),
                  //             const SizedBox(
                  //               height: 10.0,
                  //             ),
                  //             const Text(
                  //               "Attendance",
                  //               style: TextStyle(
                  //                 fontFamily: 'Poppins',
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ]
            ),
          ),
        )
    );
  }
}
