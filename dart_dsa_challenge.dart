/*Have the function arrayList(arr)

read the array of strings stored in strArr, which will contain 2 elements:
the first element will be a sequence of characters, and the second element will be a long
string of comma-separated words, in alphabetical order, that represents a dictionary of some arbitrary length.

For example: strArr can be: ["hellocat",
"apple, bat, cat, goodbye, hello, yellow, why"] .
Your goal is to determine if the first element in the input can be split into two words,
where both words exist in the dictionary that is provided in the second input.

In this example,
the first element can be split into two words: hello and cat because both of those words are in the dictionary.

Your program should return the two words that exist in the dictionary separated by a comma.

So for the example above, your program should return hello, cat.
There will only be one correct way to split the first element of characters into two words.

If there is no way to split string into two words that exist in the dictionary, return the string not possible.
The first element itself will never exist in the dictionary as a real word.

Once your function is working, take the final output string and concatenate it with your ChallengeToken,

and then replace every third character with an X.

Your ChallengeToken: pq7kbawue985
Examples
Input: ["baseball","a,all, b, ball, bas, base, cat, code, d, e, quit, z"]
Output: base, ball
Final Output: baXe, XalXpqXkbXwuX98X

Input: ["abegefd","a, ab, abc, abeg, b, c, dog, e, efd, zzzz" ]
Output: abcg, efd
Final Output: abXg, XfdXq7XbaXueX85 */

//Solution

import 'package:dart_dsa_challenge/dart_dsa_challenge.dart' as dart_dsa_challenge;

String arrayList (List<String> arr ) {
  String word = arr[0];
  List<String> dictionary = arr[1].split(',');

  for (int i=0; i < word.length; i++){
    String firstPart = word.substring(0,i);
    String secondPart = word.substring(i);

    if (dictionary.contains(firstPart) && dictionary.contains(secondPart)){
      return "$firstPart,$secondPart";
    } 
  }
  return "not possible";
}

String finalOutput (String result, String token) {
  String combined = result + token;
  List<String> characters = combined.split('');

  for(int i = 2; i < characters.length; i+=2){
    characters[i] = 'X';
  }
  return characters.join('');
}

void main() {
  String testToken = "pq7kbawue985";
  print( finalOutput(arrayList(["baseball", "base,ball,x,z"]), testToken));
}
