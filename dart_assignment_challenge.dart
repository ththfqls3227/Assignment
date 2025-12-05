//도전문제!!
import 'dart:collection';
import 'dart:math';

void main(){
  
  //1. 중복 없이 번호를 추첨하여 복권을 발급 기능
  //SplayTreeSet을 사용함으로서 randomNum 중복 방지 및 오름차순 정렬
  var myNumber = SplayTreeSet<int>();
  int randomNum = 0;
  while (myNumber.length < 6) {
    randomNum = Random().nextInt(46);
    //분기처리 하기 싫으면 randomNum = Random().nextInt(45) + 1; 이렇게도 가능할 듯 (조금 더 효율적?)
    if (randomNum != 0) {
      myNumber.add(randomNum);
    }
  }
  //발급한 로또 번호를 대괄호로 출력하기 위해 리스트로 출력(굳이 필요한지는 모르겠지만 혹시 모르니까...)
  print("발급한 로또 번호: ${myNumber.toList()}");
  
  
  //2. 발급한 복권의 번호와 당첨 번호 비교 기능
  Set<int> lottoNum = {9, 19, 29, 35, 37, 38};
  print("당첨 번호: ${lottoNum.toList()}");
  
  //교집합 확인
  Set<int> intersection = myNumber.intersection(lottoNum);
  
  //맞춘 번호도 확인할 수 있게 기능 추가
  if (intersection.length >= 5) {
    print("당첨 여부: [1등]! 맞춘 번호: ${intersection.toList()}");
    } 
    else if (intersection.length >= 4) {
      print ("당첨 여부: [2등]! 맞춘 번호: ${intersection.toList()}");
      }
      else if (intersection.length >= 3) {
        print ("당첨 여부: [3등]! 맞춘 번호: ${intersection.toList()}");
        }
        //1개 ~ 2개 맞춘 경우 당첨 실패지만 맞춘 번호 표시
        else if (intersection.length >= 1) {
          print ("당첨 여부: 당첨 실패! 맞춘 번호: ${intersection.toList()}");
          }        
          else {
            print ("당첨 여부: 당첨 실패! 맞춘 번호: 꽝!!!");
            }

  //3. 발급한 로또를 초기화 할 수 있는 기능
  myNumber.clear();
  print("현재 발급한 로또 번호: ${myNumber.toList()}"); 
}