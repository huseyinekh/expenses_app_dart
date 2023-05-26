import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app2/image_widget.dart';


class StartScreen extends StatelessWidget {
const StartScreen(this.startQuiz,{super.key});
final void Function()   startQuiz;



  @override
  Widget build(BuildContext context) {
    return 
       Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
            ImageWidget(),
            Padding(
              padding:
                  EdgeInsets.all(12.0), // Adjust the padding values as needed
              child: Text(
                'AISTGroup MMC',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 16, 4, 155),
                
                textStyle: TextStyle(fontSize: 25),
              ),
                label: Text("Başla"),
                icon: Icon(Icons.arrow_forward),
              
            )
          ]);
        
    
  }
}
