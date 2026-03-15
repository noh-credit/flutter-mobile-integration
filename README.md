# 대림대학교 모바일통합구현1

1학기 3학년 2반 수업

<br>

## 1주차

<details>
<summary> 내용</summary>

- OT 진행
</details>

<br>

## 2주차

<details>
<summary> 내용</summary>

- ### Flutter 설치 및 환경설정 (Windows & macOS)
    
    - **Windows**
        1. **Flutter SDK**: 공식 홈페이지에서 SDK 다운로드 및 환경 변수(Path) 등록
        2. **Android Studio**: Android SDK 및 Virtual Device(에뮬레이터) 설치
        3. **VS Code**: Flutter/Dart 확장 플러그인 설치

    - **macOS**
        1. **Xcode**: iOS 시뮬레이터 및 빌드 도구 설치
        2. **CocoaPods**: iOS 라이브러리 관리자 설치 (`sudo gem install cocoapods`)
        3. **Rosetta 2**: Apple Silicon(M1/M2/M3) 사용 시 필수 설치
    
    <br>
    
    - > 설치 후 터미널에서 `flutter doctor` 명령어를 입력하여 설정 상태를 최종 확인한다

---

- ### 프로젝트 생성 및 구조
    - **Command**: `flutter create (프로젝트 이름)`
    
    - **주요 디렉토리**:
        * `lib/`: 실제 Dart 코드가 작성되는 공간 (main.dart)
        * `pubspec.yaml`: 라이브러리 및 에셋(이미지, 폰트) 관리 파일
        * `android/` & `ios/`: 각 플랫폼별 네이티브 설정 파일

---

- ### Dart 기초 문법 학습

```dart
void main() {
  // 변수 선언
  var a = 'a';           // 타입 추론 변수
  final b = 'B';         // 수정 불가능한 상수
  int score = 50;        // 타입 지정
  dynamic any = 1;       // 모든 타입 허용 (Kotlin의 Any와 유사)
  any = 'a';


  // 삼항 연산자
  score == 50 ? print('결과: 50점') : print("결과: 아님");


  // 람다식
  var lambdaAdd = (int a, int b) => a + b;
  print(${lambdaAdd(6,5)});


  // for문
  for (int i = 0; i < 10; i++) {
    score++;
  }


  // while 및 break
  while(true) {
    score++;

    if(score <= 70) break; // score가 70 이상이면 while 탈출
  }


  // switch문
  switch (score) {
    case >= 50:
      print('상태: 50점 이상');
      break;
    case < 50:
      print('상태: 50점 미만');
      break;
    default:
      print('상태: 점수 모름');
  }



  // List<value>
  List<String> list = [];
  var list2 = [];


  // map<key, value>
  var map = <String, dynamic>{
    'a': 'A',
    'b': 'B'
  };

  // map의 value값이 dynamic타입이므로 아래처럼 String에서 int형으로 변경 가능
  map = {
    'name': '대림대',
    'score': score
  };


  print('최종 점수: $score'); // 최종 점수: 70
  print('map 데이터: $map'); // map 데이터: {name: 대림대, score: 70}
}
```

</details>