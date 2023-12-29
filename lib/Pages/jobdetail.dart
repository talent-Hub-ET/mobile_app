import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class JobDetail extends StatefulWidget {
  const JobDetail({super.key});

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.bookmark_outline_rounded,
                color: Color.fromRGBO(189, 189, 189, 1)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('lib/assets/1.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Job Title',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(24, 26, 31, 1),
                ),
              ),
              Text(
                'Company Name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(24, 26, 31, 1),
                ),
              ),
              Text(
                'Posted on Date',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(24, 26, 31, 1),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'APPLY BEFORE',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 11.5),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text('JOB NATURE',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 11.5))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '20 AUGEST,2021',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    // height: 21,
                    width: 80,
                    color: Color.fromRGBO(5, 196, 159, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FittedBox(
                        child: Text(
                          'Contractual',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'SALARY RANGE',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 11.5),
                  ),
                  SizedBox(
                    width: 93,
                  ),
                  Text('JOB LOCATION',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 11.5))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '20k-51k',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(width: 120),
                  Text(
                    'Work from anywhere',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Job Description',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11.5),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 29.0),
                child: ReadMoreText(
                  'We are seeking a talented and passionate UI/UX Designer to join our growing team and play a key role in crafting seamless and engaging user experiences for our [products/services]. You will be responsible for the entire design process, from user research and information architecture to visual design and prototyping..',
                  trimLines: 5,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  colorClickableText: Color.fromRGBO(36, 107, 253, 1),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'See more',
                  trimExpandedText: 'See less',
                  moreStyle: TextStyle(
                      height: 20 / 14,
                      letterSpacing: 0,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(36, 107, 253, 1)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Roles and Responsiblities',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 11.5,
                    color: Color.fromRGBO(24, 26, 31, 0.75)),
              ),
              SizedBox(
                height: 10,
              ),
              //the following structure depends on the api response
              // wheter the it came formated or not for know
              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: PageScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: ((context, index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\u2022 ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Expanded(
                              child: Text(
                                'Conduct user research to understand user needs, pain points, and expectations.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ))),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        width: double.infinity,
        height: 128,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 15, 60, 60),
          child: Container(
            width: 100,
            // height: 4,rgba(5, 195, 158, 1)
            decoration: BoxDecoration(
                color: Color.fromRGBO(5, 195, 158, 1),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(
              'APPLY NOW',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  letterSpacing: 1,
                  color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
