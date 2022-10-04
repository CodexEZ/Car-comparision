import 'package:flutter/material.dart';
class Panel extends StatelessWidget {
  final String inputText;
  const Panel({required this.inputText});

  @override
  Widget build(BuildContext context, ) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width-60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/250?image=$inputText",),
            fit: BoxFit.cover

          ),
          color: Colors.grey[300]
      ),
      child: Center(
        child: Text(
          "$inputText",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
class Small_Panel extends StatelessWidget {
  final String inputText;
  const Small_Panel({required this.inputText});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.cyan[100]
          ),
          child: Center(
            child: Text(
              "$inputText",
              style: TextStyle(
                  color: Colors.grey[100],
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
    );
  }
}
class long_panel extends StatelessWidget {
  final String inputText;
  const long_panel({required this.inputText});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/250?image=$inputText",),
            fit: BoxFit.cover

        ),

      ),
    );
  }
}

