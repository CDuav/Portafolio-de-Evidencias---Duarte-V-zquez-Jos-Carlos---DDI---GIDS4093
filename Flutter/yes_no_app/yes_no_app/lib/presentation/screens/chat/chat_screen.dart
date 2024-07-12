import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';




class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 75, 75, 75),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://imgs.search.brave.com/p2s367Kebhb4wTdCbr9pY1DTnwkZZXzJpldbyQD8fzM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS50ZW5vci5jb20v/STM1Sk0zMnJhaEFB/QUFBTS9sdWRvdmlj/by1wZWx1Y2hlLmdp/Zg.gif'),
          ),
        ),
        title:  const Text('Usuario C_Dua'),
        centerTitle: false,
      ),
      body:  _ChatView(),
    );
  }

}

class _ChatView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: 
              ListView.builder(
                controller:chatProvider.chatScrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index  ){
                  //return (index % 2 == 0) ? const MyMessage() : const HerMessage();
                  final message = chatProvider.messages[index];
                  return (message.fromWho == FromWho.me) 
                  ?  MyMessage(message:message)
                  :  HerMessage( message: message,);

                 // if(index % 2 == 0){
                 //   return const MyMessage();
                //  }
                //  return const HerMessage();
              }
              )
            ),
            MessageFieldBox(
            //onValue:(value)=> chatProvider.sendMessages(value),)
            onValue: chatProvider.sendMessage,
            ),
          ]
        ),
      ),
    );
  }
}