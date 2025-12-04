
//필수 문제 1번
void main(){
  //1. 점수에 맞는 등급 출력하기
  int myScore = 84;
  //유효하지 않은 점수
  if (myScore>100 || myScore<0) {
    print("유효하지 않은 점수입니다.");
  }
    //A등급
    else if (myScore >=90 && myScore <= 100) {
      print ("이 학생의 점수는 $myScore점 이며, 등급은 A등급입니다!");
       
  }
      //B등급
      else if (myScore >= 80) {
        print("이 학생의 점수는 $myScore점 이며, 등급은 B등급입니다!");

  }
        //C등급
        else {
          print("이 학생의 점수는 $myScore점 이며, 등급은 C등급입니다!");

  }

}     



