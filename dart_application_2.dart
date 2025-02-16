// ignore: unused_import
import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;


void main() {
  int hunger = 10;
  int happiness = 5;
  int energy = 8;
  
  for(int day =1; day <=10; day++) {
     print("day $day");
     print ("Ekuke's hunger level is at $hunger, happiness at $happiness, and energy at $energy");
  
    if(hunger > 5){
      hunger -=3;
      print("Ekuke was fed, hunger reduced");
    }
    if (happiness < 8){
      happiness +=2;
      print("Ekuke was played with, happiness increased");
    }
    if (energy < 6){
      energy +=2;
      print("Ekuke took a nap, energy increased");
    } 
   print("Ekuke's day end status:");
   print("hunger:$hunger, happiness:$happiness, Energy:$energy");
   if(hunger < 5 && happiness >= 8 && energy >= 6){
     print("Ekuke is not hungry, it is happy and has optimum energy");
   } else {
     print("Ekuke needs more attention to stay happy and healthy");
   }
 hunger ++;
 happiness --;
 energy --;
  }

  }

    

