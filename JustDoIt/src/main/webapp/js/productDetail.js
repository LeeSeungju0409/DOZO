/**
 * productDetail.js
 * 
 * wishlist 데이터 DB에 담기
 */
console.log("productDetail.js");

const svc = {
	// 목록.
	addWish(prodNo, loadCallback) {
		const xhtp = new XMLHttpRequest();
		xhtp.open('get', 'addWishlist.do?prodNo=' + prodNo ); // 
		xhtp.send();
		xhtp.onload = loadCallback;
	}// end of addWish
}// end of svc.


//. > 앞에 있는 부분 안이라는 의미
// querySelector('.wishlist-btn') => 이름() > 함수
// ' ' > 내가 찾아올 태그의 정보
// addEventListener('이벤트방식', 함수) > 함수쓰는 목적은 해당하는 이벤트가 작동을 하면 동작을 해야하니깐 함수를 넣는것.
	// 이벤트 방식 click > 클릭했을때 , change > 변경됐을때(input)
document.querySelector('.wishlist-btn').addEventListener('click',function(){
	// document 안에 input의 name이 prodNo인 input을 선택하고(document.querySelector('input[name=prodNo]'))
	// 그 값을 가져온다(.value).
	let prodNo = document.querySelector('input[name=prodNo]').value;
	// console.log(prodNo);
	svc.addWish(prodNo, function() {
		
		// 컨트롤에서 db를 등록하고 나온 결과를 받는 부분 > 결과를 보낼때 json방식으로 보냈기 때문에 JSON.parse()를 한거
		let rs = JSON.parse(this.response);
		
		// 컨트롤에 나온 결과를 위에서 json으로 바꾼 값을 조건에 만족하면 alert를 작동시킴.
		if (rs.result == 'Success') {
			// 등록완료
			alert("위시리스트 등록했습니다.");
		} else {
			// 등록실패
			alert("위시리스트 실패했습니다.");
		}
	});
});