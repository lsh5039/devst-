<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/reset.css" />"  rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<style>
	.boardWrap{width:800px; margin:0 auto;}
	.boardItem{width:100%; height:120px; border:1px solid #ddd; position:relative; margin:20px;}
	.boardCategoryNm{font-size:24px;}
	.itemDesc{width:50%; heght:100%;  padding-top:30px; text-align:center;}
	
	.itemDescTitle{margin:5px 0; font-size:18px;}
	.itemDescDate, .itemDescWriter, .itemDescDate, .itemDescContent{font-size:12px;}
	.itemDescContent{margin-top:10px;}
	.itemDescBtn{position:absolute; right:0; bottom:0;}
	.itemDescInfo{margin: 15px 0 0 0;}
	.boardItem > *{float:left;}
	.boardItem{overflow:hidden;}
	.profileWrap{width:100px; height:100px; overflow:hidden; border-radius:25px;}
	.profileWrap > img{  width: 100%; height: 100%; object-fit: cover;}
	.itemWriterNm{text-align:center; margin-top:3px;}
	
	
	.boardCaterogy{width:80px; height:40px;  float:right;}
	.boardNew, .boardBest{float:right; width:40px; height:40px; display:none;}
	.boardNew.active{background-color:#f00; color:#fff; line-height: 40px; text-align: center; display:block;}
	.boardBest.active{background-color:blue; color:#fff; line-height: 40px; text-align: center; display:block;}
	
	
</style>
	<script>
		window.onload = function(){
			let time = new Date();
			let year = time.getFullYear();
			let month = time.getMonth();
			month+=1;
			let date = time.getDate();
			
			let today = year+"-"+month+"-"+date
			console.log("지금 : "+today);
			
		}
	
	</script>

</head>
<body>
	<input type="text" value="${currentTime }"><!--현재시간을 저장하는 input  -->	
	<div class="boardWrap">
		
		<div class="boardCategoryNm">${category } </div>
		<!-- 기본 레이아웃 html ajax시 사용할수도? 삭제 ㄴㄴ -->
	<!-- 	<div class="boardItem">
			<div class="boardCaterogy">
				<div class="boardNew active">New</div>
				<div class="boardBest">Best</div>
			</div>
		
			<div class="itemWriterInfo">
				<div class="profileWrap">
					<img src="https://placehold.it/120x120">
				</div>
				<p class="itemWriterNm">김나라</p>
			</div>
			<div class="itemDesc">
				<h3 class="itemDescTitle">포트폴리오 만드실분</h3>
				<p class="itemDescContent">안녕하세요 저는 어디대구에 살고있고 같이 개..</p>
				
				<div class="itemDescBtn">
					<i class="far fa-thumbs-up">54</i>
					<i class="far fa-thumbs-down">3</i>
					<i class="far fa-comment">36</i>
				</div>
			</div>
			
		</div> -->
		<!--  -->
		<div class="boardItem">
			<div class="boardCaterogy">
				<div class="boardNew active">New</div>
				<div class="boardBest ative">Best</div>
			</div>
		
			<div class="itemWriterInfo">
				<div class="profileWrap">
					<img src="https://placehold.it/120x120">
				</div>
				<p class="itemWriterNm">1</p>
			</div>
			<div class="itemDesc">
				<h3 class="itemDescTitle">포트폴리오 만드실분</h3>
				<p class="itemDescContent">안녕하세요 저는 어디대구에 살고있고 같이 개..</p>
				
				<div class="itemDescBtn">
					<i class="far fa-thumbs-up">54</i>
					<i class="far fa-thumbs-down">3</i>
					<i class="far fa-comment">36</i>
				</div>
			</div>
			
		</div>
		
		<c:forEach var="list" items="${list }">
			<div class="boardItem">
			<input type="text" value="${list.m_dt }">
			
			<div class="boardCaterogy">
			<c:if test="${list.m_dt < currentTime-1} "><!--날짜비교해서 new 카테고리 addClass할꺼  -->
			<!--여기 바꿔보자  -->
			</c:if>
				
				<div class="boardBest ative">Best</div>
			</div>
		
			<div class="itemWriterInfo">
				<div class="profileWrap">
					<img src="https://placehold.it/120x120">
				</div>
				<p class="itemWriterNm">${list.nick }</p>
			</div>
			<div class="itemDesc">
				<h3 class="itemDescTitle">${list.title }</h3>
				<p class="itemDescContent">${list.content }</p>
				
				<div class="itemDescBtn">
					<i class="far fa-thumbs-up">54</i>
					<i class="far fa-thumbs-down">3</i>
					<i class="far fa-comment">36</i>
				</div>
			</div>
			
		</div>
		
		</c:forEach>
		
		
	</div>	

</body>
</html>