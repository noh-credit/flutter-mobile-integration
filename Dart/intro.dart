void main() {
  var a = 'a';
  //val <- 사용불가
  final b = 'B'; // 상수값
  print(a);

  //변수명 앞에 타입을 지정하여 선언할 수 있음
  int score = 50;

  //람다식
  score == 50 ? print('50점') : print("아님");

  for (int i = 0; i < 10; i++) {
    score++;
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

  // dynamic은 어떤 타입이든 가능
  var map = <String, dynamic>{
    'a': 'A',
    'b': 'B'
  };

  map = {
    'c': 'C',
    'd': 50
  };
}
