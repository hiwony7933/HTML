<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>

<body bgcolor="${color}">
<section class="content">
	<div class="box">
		<div class="box-header with-border">
			<a href="study/list"><h3 class="box-title">Study게시판 목록보기</h3></a>
			<a href="study/register"><h3 class="box-title">Study 게시판 글쓰기</h3></a>			
			<a href="board/list"><h3 class="box-title">게시판 목록보기</h3></a>
			<a href="board/register"><h3 class="box-title">게시판 글쓰기</h3></a>
			<a href="user/secession"><h3 class="box-title">회원탈퇴</h3></a>
			<a href="/user/updateform"><h3 class="box-title">회원정보수정</h3></a>
			
			
			<c:if test="${user==null}">

				<div class="box-header with-border">
					<a href="/user/register"><h3 class="box-title">회원가입</h3></a>

					<a href="user/login"><h3 class="boxtitle">로그인</h3></a>
				</div>
			</c:if>
			<c:if test="${user!=null }">
				<div class="box-header with-border">
					<a href="user/logout"><h3 class="boxtitle">로그아웃</h3></a>
				</div>
			</c:if>
			
			
		</div>
	</div>
</section>
</body>
<// %@include file="include/footer.jsp"%>
<c:if test="${insert != null }">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#dialog-confirm").dialog({
				resizable : false,
				height : "auto",
				width : 400,
				modal : true,
				buttons : {"닫기" : function() {
						$(this).dialog("close");
					},
				}
			});
		});
	</script>
</c:if>
<div id="dialog-confirm" title="회원가입" style="display: none">
	<p>
		<span class="ui-icon ui-icon-alert" style="float: left; margin: 12px 12px 20px 0;"></span> 
		회원가입에 성공하셨습니다.이제 로그인하고 사용하시면 됩니다.
	</p>
</div>


<c:if test="${update != null }">
	<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#dialog-update").dialog({
				resizable : false,
				height : "auto",
				width : 400,
				modal : true,
				buttons : {
					"닫기" : function() {
						$(this).dialog("close");
					},
				}
			});
		});
	</script>
</c:if>
<div id="dialog-update" title="회원정보 수정" style="display: none">
	<p>
		<span class="ui-icon ui-icon-alert" style="float: left; margin: 12px 12px 20px 0;"></span>
		회원정보 수정에 성공하셨습니다.이제 로그인하고 사용하시면 됩니다.
	</p>
</div>

<c:if test="${secession != null }">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#dialog-update").dialog({
				resizable : false,
				height : "auto",
				width : 400,
				modal : true,
				buttons : {
					"닫기" : function() {
						$(this).dialog("close");
					},
				}
			});
		});
	</script>
</c:if>
<div id="dialog-update" title="회원탈퇴" style="display: none">
	<p>
		<span class="ui-icon ui-icon-alert" style="float: left; margin: 12px 12px 20px 0;"></span>
		회원 탈퇴에 성공하셨습니다.
	</p>
</div>
