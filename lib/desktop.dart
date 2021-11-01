import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(
       children:
       [
         Expanded(
           child: Container(
             height: double.infinity,
             color: Colors.teal,
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children:
               [
                 Text(
                   'Login with your account',
                   style: Theme.of(context).textTheme.headline5!.copyWith(
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 const SizedBox(
                   height: 20.0,
                 ),
                 TextFormField(
                   decoration: const InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Email Address',
                   ),
                 ),
                 const SizedBox(
                   height: 20.0,
                 ),
                 TextFormField(
                   decoration: const InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Password',
                   ),
                 ),
                 const SizedBox(
                   height: 40.0,
                 ),
                 Row(
                   children:
                   [
                     Expanded(
                       child: Container(
                         height: 40.0,
                         color: Colors.teal,
                         child: MaterialButton(
                           onPressed: (){},
                           child: const Text(
                               'Login',
                             style: TextStyle(
                               color: Colors.white
                             ),
                           ),
                         ),
                       ),
                     ),
                     const SizedBox(
                       width: 20.0,
                     ),
                     Expanded(
                       child: Container(
                         height: 40.0,
                         color: Colors.blue,
                         child: MaterialButton(
                           onPressed: (){},
                           child: const Text(
                             'Sing Out',
                             style: TextStyle(
                                 color: Colors.white
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
    );
  }
}
