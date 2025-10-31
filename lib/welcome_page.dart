import 'package:flutter/material.dart';
import 'package:nortodo/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.bookmarks,color: Colors.grey, size: 100)),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          Text(
            "Plan less, Achieve more",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey, fontSize: 20),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ToDoUserScreen()));
            },
            child: Container(         
                 
            // padding: EdgeInsets.all(20),
              
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                 color: Colors.grey,
                // borderRadius: BorderRadius.circular(50)
              ),
              child: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 60,),

            ),
          )
        ],
      ),
    );
  }
}
