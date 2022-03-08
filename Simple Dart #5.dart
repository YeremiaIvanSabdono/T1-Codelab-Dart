// Simple Dart #5
String scream(int length) => "B${'r' * length}ruh!";
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

main() {
  //function sebagai Object
  var wf = WannabeFunction();
  var out = wf('Hi', "it's", 'Me');
  print(out);
  print(" ");
  
  final values = [1, 2, 3, 5, 10, 50];
  //non-functional
  for (var length in values) {
    print(scream(length));
  }
  print(" ");
  
  //functional
  values.map(scream).forEach(print);
  print(" ");
  values.skip(1).take(3).map(scream).forEach(print);
  print(" ");
}