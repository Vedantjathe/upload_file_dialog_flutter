import 'package:flutter/material.dart';
import 'package:phlebotomist_application_flutter/constants/colors.dart';

uploadFileDialog(BuildContext context,
    {VoidCallback? cameraCallback, VoidCallback? storageCallBack}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 0, 5),
                    child: Text(
                      "Upload File",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: cameraCallback,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0XFFE3E3E3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              margin: const EdgeInsets.only(right: 5, left: 10),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.camera_alt_rounded,
                                    color: purple200,
                                    size: 32,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Camera",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: storageCallBack,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0XFFE3E3E3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                            margin: const EdgeInsets.only(left: 5, right: 10),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.image_rounded,
                                  color: purple200,
                                  size: 32,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Storage",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Segoe',
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
                      child: Text(
                        "Cancel",
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }).then((value) => {});
}
