//필수 문제 2번
void main(){
  //1. 구매자가 장바구니에 담은 상품 목록을 볼 수 있는 기능
  //상품별 가격
  var pricing = {"티셔츠" : 10000, "바지" : 8000, "모자" : 4000};
  
  //장바구니 입력
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지", "양말", "가방"];
  int length = cart.length;
  
  //장바구니가 빈 경우 알림
  if (cart.isEmpty){
    print("장바구니가 비었습니다.");
  }
  
  //물건 갯수 추가기능(소비자가 한번 더 확인 가능)
  else {
    print("장바구니에 담은 물건 갯수는 $length개 입니다");
  }
  
  //총 가격 계산
  int total = 0;
  for (var item in cart) {
    var price = pricing[item];

    if (price == null) {
      print("⚠️'${item}'은(는) 등록되지 않은 상품입니다. 등록되지 않은 상품은 제외 후 계산됩니다.");
    }
    total += pricing[item]??0;
  } 
  print("장바구니에 $total원 어치를 담으셨네요!");
  
  //2. 전체 구매 예정 금액에 따른 할인 여부를 확인하는 기능
  int discount = 0;
  if (total > 20000) {
    discount = (total*0.1).round();
    print("할인 금액 : $discount원");
  }

  //최종 금액
  int finalPrice = total - discount;
  print("최종 결제 금액은 $finalPrice원입니다!");

}