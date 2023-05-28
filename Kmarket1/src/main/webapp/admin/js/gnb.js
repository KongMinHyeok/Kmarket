$(function(){
    var gnb = $('#gnb > li > a');

    gnb.click(function(e){
        e.preventDefault();

        var isOpen = $(this).next().is(':visible');
        console.log(isOpen);

        if(isOpen){
            $(this).next().slideUp(200);
        }else{
            $(this).next().slideDown(200);
        }
    });
    
	$("select[name=cate]").change(function() {
		let cate = $(this).val();
		let cate2 = $("select[name=cate2]");
		
		cate2.empty();
		if(cate == '회원'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="가입">가입</option>');
			cate2.append('<option value="탈퇴">탈퇴</option>');
			cate2.append('<option value="회원정보">회원정보</option>');
			cate2.append('<option value="로그인">로그인</option>');
		}
		if(cate == '쿠폰/혜택/이벤트'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="쿠폰/할인혜텍">쿠폰/할인혜텍</option>');
			cate2.append('<option value="포인트">포인트</option>');
			cate2.append('<option value="제휴">제휴</option>');
			cate2.append('<option value="이벤트">이벤트</option>');
		}
		if(cate == '주문/결제'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="상품">상품</option>');
			cate2.append('<option value="결제">결제</option>');
			cate2.append('<option value="구매내역">구매내역</option>');
			cate2.append('<option value="영수증/증빙">영수증/증빙</option>');
		}
		if(cate == '배송'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="배송상태/기간">배송상태/기간</option>');
			cate2.append('<option value="배송정보확인/변경">배송정보확인/변경</option>');
			cate2.append('<option value="스마일배송">스마일배송</option>');
			cate2.append('<option value="해외배송">해외배송</option>');
			cate2.append('<option value="당일배송">당일배송</option>');
			cate2.append('<option value="해외직구">해외직구</option>');
		}
		if(cate == '취소/반품/교환'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="반품신청/철회">반품신청/철회</option>');
			cate2.append('<option value="배송정보확인/변경">배송정보확인/변경</option>');
			cate2.append('<option value="교환.AS신청/철회">교환.AS신청/철회</option>');
			cate2.append('<option value="교환정보확인/변경">교환정보확인/변경</option>');
			cate2.append('<option value="취소신청/철회">취소신청/철회</option>');
			cate2.append('<option value="취소확인/환불정보">취소확인/환불정보</option>');
		}
		if(cate == '여행/숙박/항공'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="여행/숙박">여행/숙박</option>');
			cate2.append('<option value="항공">항공</option>');
		}
		if(cate == '안전거래'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="서비스 이용규칙 위반">서비스 이용규칙 위반</option>');
			cate2.append('<option value="지식재산권침해">지식재산권침해</option>');
			cate2.append('<option value="법령 및 정책위반 상품">법령 및 정책위반 상품</option>');
			cate2.append('<option value="게시물정책위반">게시물정책위반</option>');
			cate2.append('<option value="직거래/외부거래유도">직거래/외부거래유도</option>');
			cate2.append('<option value="표시광고">표시광고</option>');
			cate2.append('<option value="청소년위해상품/이미지">청소년위해상품/이미지</option>');
		}
	});
	
	//유효성검사
	$('input[name=submit]').click(function(){
		var title = $('input[name=title]').val();
		var content = $('textarea[name=content]').val();
		var comment = $('textarea[name=comment]').val();		
		var cate = $('select[name=cate]').val();
		var cate2 = $('select[name=cate2]').val();
		
		if(title == '') {
			alert("제목을 입력해주세요");
			return false;
		}
		if(content == '') {
			alert("내용을 입력해주세요");
			return false;
		}
		if(comment == '') {
			alert("답변 내용을 입력해주세요");
			return false;
		}
		if(cate == 0) {
			alert("유형을 선택해주세요");
			return false;
		}
		if(cate2 == ''){
			alert("2차유형을 선택해주세요");
			return false;
		}
		
	});

});
