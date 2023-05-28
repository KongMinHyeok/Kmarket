<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
$(function(){
	// 문의글 작성 유효성 검사
	$('.write form').submit(function() {
		let cate = $('select[name=cate]').val();
		let title = $('input[name=title]').val();
		let content = $('textarea[name=content]').val(); 
		
		if(cate == 0){
			alert('카테고리를 선택해주세요.');
			return false;
		}
		if(title == '' || title == null){
			alert('제목 입력은 필수입니다.');
			$('input[name=title]').focus();
			return false;
		}
		if(content == '' || content == null){
			alert('내용 입력은 필수입니다.');
			$('textarea[name=content]').focus();
			return false;
		}
		
		alert('작성이 완료되었습니다');
		
	});
    
	$("select[name=cate]").change(function() {
		let cate = $(this).val();
		let cate2 = $("select[name=cate2]");
		
		cate2.empty();
		if(cate == 'memebr'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="가입">가입</option>');
			cate2.append('<option value="탈퇴">탈퇴</option>');
			cate2.append('<option value="회원정보">회원정보</option>');
			cate2.append('<option value="로그인">로그인</option>');
		}
		if(cate == 'event'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="쿠폰/할인혜텍">쿠폰/할인혜텍</option>');
			cate2.append('<option value="포인트">포인트</option>');
			cate2.append('<option value="제휴">제휴</option>');
			cate2.append('<option value="이벤트">이벤트</option>');
		}
		if(cate == 'order'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="상품">상품</option>');
			cate2.append('<option value="결제">결제</option>');
			cate2.append('<option value="구매내역">구매내역</option>');
			cate2.append('<option value="영수증/증빙">영수증/증빙</option>');
		}
		if(cate == 'ship'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="배송상태/기간">배송상태/기간</option>');
			cate2.append('<option value="배송정보확인/변경">배송정보확인/변경</option>');
			cate2.append('<option value="스마일배송">스마일배송</option>');
			cate2.append('<option value="해외배송">해외배송</option>');
			cate2.append('<option value="당일배송">당일배송</option>');
			cate2.append('<option value="해외직구">해외직구</option>');
		}
		if(cate == 'cancel'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="반품신청/철회">반품신청/철회</option>');
			cate2.append('<option value="배송정보확인/변경">배송정보확인/변경</option>');
			cate2.append('<option value="교환.AS신청/철회">교환.AS신청/철회</option>');
			cate2.append('<option value="교환정보확인/변경">교환정보확인/변경</option>');
			cate2.append('<option value="취소신청/철회">취소신청/철회</option>');
			cate2.append('<option value="취소확인/환불정보">취소확인/환불정보</option>');
		}
		if(cate == 'trip'){
			cate2.append('<option value="">2차 선택</option>');
			cate2.append('<option value="여행/숙박">여행/숙박</option>');
			cate2.append('<option value="항공">항공</option>');
		}
		if(cate == 'safe'){
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


});
</script>
<jsp:include page="../_header.jsp"/>
      <section id="cs">
        <div class="qna">
          <nav>
            <div>
              <p>홈<span>></span>문의하기</p>
            </div>
          </nav>
          <section class="write">
            <aside>
              <h2>문의하기</h2>
              <ul>
                <li class="${cate eq 'member' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=member">회원</a></li>
                <li class="${cate eq 'event' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=event">쿠폰/이벤트</a></li>
                <li class="${cate eq 'order' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=order">주문/결제</a></li>
                <li class="${cate eq 'ship' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=ship">배송</a></li>
                <li class="${cate eq 'cancel' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=cancel">취소/반품/교환</a></li>
                <li class="${cate eq 'trip' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=trip">여행/숙박/항공</a></li>
                <li class="${cate eq 'safe' ? 'on':'off'}"><a href="/Kmarket1/cs/qna/list.do?cate=safe">안전거래</a></li>
              </ul>
            </aside>
            <article>
              <form action="/Kmarket1/cs/qna/write.do" method="post">
              <input type="hidden" name="uid" value="${sessMember.uid}">
                <table>
                  <tr>
                    <td>문의유형</td>
                    <td>
		                <select name="cate">
		                    <option value="member">회원</option>
		                    <option value="event">쿠폰/혜택/이벤트</option>
		                    <option value="order">주문/결제</option>
		                    <option value="ship">배송</option>
		                    <option value="cancel">취소/반품/교환</option>
		                    <option value="trip">여행/숙박/항공</option>
		                    <option value="safe">안전거래</option>
		                </select>
		                <select name="cate2">
							<option value="">2차 선택</option>
							<option value="가입">가입</option>
							<option value="탈퇴">탈퇴</option>
							<option value="회원정보">회원정보</option>
							<option value="로그인">로그인</option>
		                </select>
                    </td>
                  </tr>
                  <tr>
                    <td>문의제목</td>                  
                    <td>
                      <input type="text" name="title" placeholder="제목을 입력하세요."/>
                    </td>
                  </tr>                
                  <tr>
                    <td>문의내용</td>                  
                    <td>
                      <textarea name="content" placeholder="내용을 입력하세요."></textarea>
                    </td>
                  </tr>
                </table>
                <div>
                <c:if test="${cate ne null && cate ne ''}">
                  <a href="/Kmarket1/cs/qna/list.do?cate=${cate}" class="btnList">취소하기</a>
                </c:if>
                <c:if test="${cate eq null || cate eq ''}">
                  <a href="/Kmarket1/cs/qna/list.do" class="btnList">취소하기</a>
                </c:if>
                  <input type="submit" class="btnSubmit" value="등록하기"/>
                </div>
              </form>
            </article>
          </section>
        </div>
      </section>
<jsp:include page="../_footer.jsp"/>
