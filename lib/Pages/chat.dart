import 'package:flutter/material.dart';
import 'package:mobile_app/models/message_model.dart';
import 'package:flutter/services.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController controller = TextEditingController();
  List<UserMessage> messageList = [
    UserMessage(
        date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
        isSentByMe: true,
        text: 'hi'),
    UserMessage(date: DateTime.now(), isSentByMe: false, text: 'selam'),
    UserMessage(date: DateTime.now(), isSentByMe: true, text: 'endet nh'),
    UserMessage(date: DateTime.now(), isSentByMe: false, text: 'dehna'),
    UserMessage(
        date: DateTime.now(),
        isSentByMe: true,
        text: 'Bale park hedek tawkalek'),
    UserMessage(date: DateTime.now(), isSentByMe: false, text: 'eskahun noo '),
    UserMessage(
        date: DateTime.now(), isSentByMe: true, text: ' Balefaw eza neberku'),
    UserMessage(
        date: DateTime.now(), isSentByMe: false, text: 'yet bale park??'),
    UserMessage(date: DateTime.now(), isSentByMe: true, text: 'aw mnew ?'),
    UserMessage(
        date: DateTime.now(), isSentByMe: true, text: 'mnm ena endet nber'),
    UserMessage(
        date: DateTime.now(), isSentByMe: false, text: 'it was fantastic'),
    UserMessage(
        date: DateTime.now(),
        isSentByMe: true,
        text: 'ke man gar nber yehedkew'),
    UserMessage(
        date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
        isSentByMe: true,
        text: 'selam'),
    UserMessage(date: DateTime.now(), isSentByMe: false, text: 'bechayin'),
    UserMessage(date: DateTime.now(), isSentByMe: true, text: 'relly??'),
    UserMessage(date: DateTime.now(), isSentByMe: true, text: 'Aw'),
  ];
  @override
  Widget build(BuildContext context) {
    String formateedTime = DateFormat('HH:mm a').format(DateTime.now());
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 8.0, top: 15.0), // Add your margin here
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/profile.png'),
                radius: 25,
              ),
            ),
            Positioned(
                right: 4,
                bottom: 3,
                child: Icon(
                  Icons.brightness_1,
                  color: Colors.green,
                  size: 10,
                ))
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Natnael sisay',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            Text(
              'Online',
              style: TextStyle(
                  color: const Color.fromARGB(255, 58, 56, 56), fontSize: 11),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<UserMessage, DateTime>(
            // useStickyGroupSeparators: true,
            // floatingHeader: true,
            reverse: true,
            order: GroupedListOrder.DESC,
            padding: EdgeInsets.all(8),
            groupHeaderBuilder: (UserMessage message) => SizedBox(
              height: 40,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  DateFormat.yMMMMd().format(message.date),
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )),
            ),
            elements: messageList,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            itemBuilder: (context, UserMessage message) => Row(
              // mainAxisAlignment: message.isSentByMe
              //     ? MainAxisAlignment.end
              //     : MainAxisAlignment.start,
              children: [
                message.isSentByMe
                    ? Container()
                    : CircleAvatar(
                        backgroundImage: AssetImage('lib/assets/profile.png'),
                        radius: 23,
                      ),
                Expanded(
                  child: Align(
                    alignment: message.isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(minWidth: 90),
                            child: Container(
                              // elevation: 8,
                              decoration: BoxDecoration(
                                color: message.isSentByMe
                                    ? Color.fromRGBO(23, 191, 158, 1)
                                    : Color.fromRGBO(242, 247, 251, 1),
                                borderRadius: message.isSentByMe
                                    ? BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      )
                                    : BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(message.text,
                                    style: TextStyle(
                                        color: message.isSentByMe
                                            ? Colors.white
                                            : Colors.black)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -1,
                            right: 10,
                            child: Container(
                              child: Text(
                                textAlign: TextAlign.right,
                                formateedTime,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: message.isSentByMe
                                        ? Color.fromRGBO(233, 236, 235, 1)
                                        : Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: 400,
              height: 46,
              child: SingleChildScrollView(
                child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(243, 244, 246, 1))),
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Color.fromRGBO(14, 132, 109, 1),
                            ),
                            onPressed: () {
                              final String text = controller.text;
                              final message = UserMessage(
                                  date: DateTime.now(),
                                  isSentByMe: true,
                                  text: text);

                              setState(() {
                                messageList.add(message);
                                controller.clear();
                              });
                            }),
                        hintText: "Write your message ",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(121, 124, 123, 1),
                        ),
                        fillColor: Color.fromRGBO(245, 247, 247, 1),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(243, 244, 246, 1)),
                        ),
                        alignLabelWithHint: true)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
