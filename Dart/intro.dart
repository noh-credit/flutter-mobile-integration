void main() {
  var a = 'a'; //variable
  //val <- 사용불가 value
  final b = 'B'; // 상수값
  
  print(a);

  //변수명 앞에 타입을 지정하여 선언할 수 있음
  int score = 50;

  // dynamic은 kotlin의 Any처럼 어떤 타입이든 사용가능 
  dynamic any = 1;
  any = 'a';

  //람다식
  score == 50 ? print('50점') : print("아님");

  for (int i = 0; i < 10; i++) {
    score++;
  }

  while(true)
  {
    score++;

    if(score <= 70)
    {
      break;
    }
  }


  switch (score) {
    case >= 50:
      print('50점 이상');
      break;
    default:
      print('점수 모름');
      break;
  }


  List<String> list = [];
  var list2 = [];


  var map = <String, dynamic>{
    'a': 'A',
    'b': 'B'
  };

  map = {
    'c': 'C',
    'd': 50
  };
}
