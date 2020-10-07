<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet" href="/resources/css/jquery.fullPage.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<!-- 써머노트에디터 CSS파일 -->
<link rel="stylesheet" href="/resources/css/summernote/summernote-lite.css" />
<link rel="stylesheet" href="/resources/css/manager.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type="text/javascript" ></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<!-- 써머노트에디터 JS파일 -->
<script type="text/javascript" src="/resources/js/summernote/summernote-lite.js"></script>
<!-- 써머노트에디터 JS파일 -->
<script type="text/javascript" src="/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<style type="text/css">
#notice-category {
	background-color: #C0C0C0;
    transition: all 0.5s;
    transition-timing-function: ease;
}
#notice-category .col:hover{
    transition: all 0.5s;
    transition-timing-function:ease;
    background-color: white;
    cursor: pointer;
}
#notice-category .col {
	font-size: 25px;
	padding-top: 15px;
	padding-bottom: 15px;
}
.scale {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.scale:hover {
  transform: scale(5.0);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
  cursor: pointer;
}
a {
	text-decoration: none !important;
	color: black;
}
a:hover {
	font-weight: bold;
	 color: black;
}
</style>
</head>
<body>
<c:set var="topName" value="notice"/>
	<%@ include file="../manager/common/managerTop.jsp" %>
<div class="page-wrapper chiller-theme toggled">
  <%@ include file="../manager/common/managernavi.jsp" %>
  <!-- sidebar-wrapper  -->
 <div class="page-content">
 <!--  
<div class="header">
%@ include file="../common/navi.jsp" %>
</div>
-->
<div class="body" style="margin-top: 70px;">
	<div class="container">
		<div class="row card">
			<div class="col-12 mt-2 mb-2">
		<div class="row">
			<div class="col-12">
				<div class="row mb-3">
					<div class="col-12">
						<strong><span style="font-size: 25px;">고객지원센터</span></strong>
						<p id="modal-open-checked1" hidden="" title="${openModal }"></p>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-12">
						<div class="row category" id="notice-category" align="center">
							<div class="col" id="notice-list"><a href="/notice/list.do">공지사항</a></div>
							<div class="col" id="QnA-list"><a href="/qna/list.do">QnA</a></div>
						</div>
					</div>
				</div>
				<form action="add.do" method="post" enctype="multipart/form-data">
				<!-- EL에서 값 가져오기 -->
					<div class="row">
						<div class="col-12 mb-1">
							<strong><span>분류를 선택해주세요</span></strong>(필수)
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio" name="category" value="서비스소식">
								<label class="custom-control-label" for="customRadio">서비스소식</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio2" name="category" value="서비스안내">
								<label class="custom-control-label" for="customRadio2">서비스안내</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio3" name="category" value="서비스오픈">
								<label class="custom-control-label" for="customRadio3">서비스오픈</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio4" name="category" value="서비스종료">
								<label class="custom-control-label" for="customRadio4">서비스종료</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio5" name="category" value="기타">
								<label class="custom-control-label" for="customRadio5">기타</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-1">
							<strong><span>뱃지를 선택해주세요</span></strong>(선택)
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio6" name="badge" value=0>
								<label class="custom-control-label" for="customRadio6">선택안함</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio7" name="badge" value=2>
								<label class="custom-control-label" for="customRadio7">새소식</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="customRadio8" name="badge" value=1>
								<label class="custom-control-label" for="customRadio8">단독판매</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-2 form-group" >
							<strong><label>메인 타이틀</label></strong>(필수)
							<input type="text" id="main-title" class="form-control" name="mainTitle" placeholder="메인타이틀, 최대 35자까지 가능합니다." style="width: 50%">
						</div>
					</div>
					<div class="row" style="background-color: #f5f5f5; height: 300px;">
						<div class="col-3" style="text-align: center;">
							<div class="row" id="selection-image" style="text-align: center;">
								<div class="col-12" style="margin-top: 40px;">
									<button type="button" style="background-color: #f5f5f5" class="btn btn-light" data-toggle="modal" data-target="#modal-image-add-form" 
									id="search-photo" name="mainImage"><i class="far fa-plus-square fa-9x"></i></button>
								</div>
								<div style="padding-left: 90px;"><span style="font-size: small;">이미지첨부(선택)</span></div>
							</div>
						</div>
						<div class="col-9">
							<div class="row mt-2">
								<div class="col-12 form-group">
									<strong><label>폼 제목</label></strong>(필수)
									<input id="form-title" class="form-control" type="text" name="formTitle" placeholder="폼제목, 최대 25자까지 가능합니다."/>
								</div>					
							</div>
							<div class="row" >
								<div class="col-2" style="margin-top: 15px; margin-left: 15px;">
									<div class="row" id="select-emoticon-form">
										<div class="col-12">
											<input type="hidden" name="mainEmoticon">
											 <button type="button" class="btn btn-dark" id="select-emoticon" data-toggle="modal" data-target="#modal-emoticon-add-form"
											 ><span style="font-size: small;">이모티콘<br/>선택하기</span></button>
										</div>
									</div>
								</div>
								<div class="col-9">
									<textarea id="summernote-form-content" name="formContent"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-4 form-group">
							<strong><label>본문제목</label></strong>(필수)
							<input class="form-control" type="text" name="subTitle" placeholder="본문제목, 최대  25자까지 가능합니다." />
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="col-12">
									<strong><label>본문내용</label></strong>(필수)
								</div>
							</div>
							<textarea id="summernote-content-sub" name="subContent"></textarea>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-9">
						</div>
						<div class="col-1 right">
							<div class="row">
								<div class="col-12" align="center">
									<a href="/admin/notice/list.do"><i class="fas fa-stream fa-2x" style="color: black;"></i></a>
								</div>
							</div>
							<div class="row right">
								<div class="col-12" align="center">
									<span><strong>목록</strong></span>
								</div>
							</div>
						</div>
						<div class="col-1 right">
							<button type="submit" class="btn btn-primary">등록</button>
						</div>
						<div class="col-1 right">
							<a href="/admin/notice/list.do" class="btn btn-danger">취소</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		</div>
	</div>
	</div>
<%@ include file="imageSearchModal.jsp" %>
</div>
</div>
<script type="text/javascript">
$(function() {
	
	//현재 페이지의 URL주소를 가져온다.
	var URL = window.location.href;
	// URL에 notice가 포함되어있으면 배경색을 흰색으로 바꿔준다.
	if (URL.indexOf("notice") != -1) {
		$("#notice-list").css("background-color","white")
	}
	
	// 이미지추가 모달창을 생성할 때 선택된 이미지, 검색어를 비우게한다.
	$("#search-photo").on("click", function() {
		$(".modal-body img").css("background-color", "");
		$("#search-photo-modal").val("")
		$("#upfile-inputBox").val("");
		$(".imgs_wrap").empty();
		
		var imagePaths = new Array();
		
		$.ajax({
			url: "getImages.do",
			type: "GET",
			dataType: "json",
			success: function (data) {
				data.forEach(function (element) {
					imagePaths.push(element.imagePath);
				})
				
				$("#image-list-notice-modal").empty();
				
				var addElement = "";
				addElement += "<div class='col-12 mb-5' id='image-list-search-image'>";
				addElement += "</div>"
				
				$("#image-list-notice-modal").append(addElement);
				
				for (var i=0; i<imagePaths.length; i++) {
					var addElement = "";
					addElement = "<img src='../resources/sample-images/"+imagePaths[i]+"' style='height: 200px; width: 200px;' class='img-thumbnail scale'>"
					
					$("#image-list-search-image").append(addElement);
					
				}
			}
		})
		
	})

	$('#summernote-content-sub').summernote({
		  toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['insert',['picture','link','video']],
			    ['view', ['fullscreen', 'help']]
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
			  height: 300,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
	});
	
	$('#summernote-form-content').summernote({
		  toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['insert',['picture','link','video']],
			    ['view', ['fullscreen', 'help']]
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
			  height: 100,					// 에디터 높이
			  weight: 500,
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대 50자까지 가능합니다.'	//placeholder 설정
	});
	
	$("#form-title").on('keyup', function() {
		if ($(this).val().length > 50) {
			$(this).val($(this).val().substring(0, 50));
			alert("최대 50자까지 입력가능합니다.")
		}
	})
	
	$("#customRadio").focus();
	
	$("#main-title").on("keyup", function () {
        var text = $(this).val()
        var regexp = /[0-9a-zA-Zㄱ-ㅎ|ㅏ-ㅣ|가-힣~!@#$%^&*()_+|<>?:{}.;\-]/; // 숫자,영문,특수문자
        for(var i=0; i<text.length; i++){
            if(text.charAt(i) != " " && regexp.test(text.charAt(i)) == false){
             var currentString = $(this).val()
             var substitutionSentence = currentString.substr(0, currentString.length-1)
             alert(text.charAt(i) + "는 입력불가능한 문자입니다");
             $(this).val(substitutionSentence)
             return;
            }
        }
        if ($(this).val().length > 35) {
        	alert("최대 35자까지 가능합니다.");
            var currentString = $(this).val()
            var substitutionSentence = currentString.substr(0, 35)
            $(this).val(substitutionSentence)
        	return;
        }
	})
})
	
</script>
</body>
</html>