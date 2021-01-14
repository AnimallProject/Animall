// --------------------------------- 사진 등록 --------------------------
// -------------------------------------------------------------------
// 메인 사진등록 

var div = document.getElementById('profile_ImageBox');
var img = document.getElementById('profile_Image');
var divAspect = 125 / 125; 					// 원하는 비율은 1
var imgAspect = img.height / img.width;   // 이미지 비율

if (imgAspect <= divAspect) { // 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다
    
    // 즉, 아래의 식을 보면 세로의 실질적인 값을 공통으로 하여 각각의 비율로 나누어주고
    // 이는 공통으로 height 값을 주기에 값이 통일된다
    
    var imgWidthActual = div.offsetHeight / imgAspect;				  // 125w/h
    var imgWidthToBe = div.offsetHeight / divAspect;                  //offsetHeight는 border와 패딩을 포함한 길이값 -> 여기선 125px
    var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2);  // 마이너스도 마이너스로 반올림 된다 Actual값이 더 크다 -> -결과값
    img.style.cssText = 'width: auto; height: 100%; margin-left: '      // 총 크기에서 2로 나눈값을 마진 left한다
                      + marginLeft + 'px;'
} else {
    // 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다
    img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';
}

// 위 메뉴 사진등록

var div2 = document.getElementById('topMenu_profileImgBox');
var img2 = document.getElementById('topMenu_profile');
var divAspect2 = 50 / 50; 					
var imgAspect2 = img.height / img.width;   

if (imgAspect2 <= divAspect2) { 
    
    var imgWidthActual2 = div2.offsetHeight / imgAspect2;				  
    var imgWidthToBe2 = div2.offsetHeight / divAspect2;                 
    var marginLeft2 = -Math.round((imgWidthActual2 - imgWidthToBe2) / 2);  
    img2.style.cssText = 'width: auto; height: 100%; margin-left: '      
                      + marginLeft2 + 'px;'
} else {
    
    img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';
}


// --------------------------------- 관리자 등록 페이지 --------------------------
// --------------------------------------------------------------------------


////기본 정보 버튼으로 열기
//var adminInfo = document.getElementById('basicAdminInfo');
//
////정보버튼 열고 닫기
//var adminContainer = document.getElementById('adminPrimeContainer_forRayer');
//var close = document.getElementById('write_close_button');
//
////닫았을때 값 초기화용
//var filereset1 = document.getElementById('fileSubmit1');
//var breset = document.getElementById('nameBox1');
//var bprice = document.getElementById('bprice');
//var btitle = document.getElementById('btitle');
//var bsale = document.getElementById('bsale');
//var bsaleprice = document.getElementById('bsaleprice');
//var bexplain = document.getElementById('bexplain');
//
//
//
//// 상품등록버튼 열고 닫는 이벤트
//
//
//adminInfo.addEventListener('click', function(){
//
//	adminContainer.style.visibility = 'visible';
//
//})
//
////닫는거 + 초기화
//close.addEventListener('click', function(){
//
//	adminContainer.style.visibility = 'hidden';
//	
//	
//	filereset1.value = null;
//	breset.value = '파일선택';
//	bprice.value = null;
//	btitle.value = null;
//	bsale.value = null;
//	bsaleprice.value = null;
//	bexplain.value = null;
//	$("#bproductlevel option:eq(0)").prop("selected", true);
//
//})


// 썸네일 이미지 출력 입니다
var imgTarget = $('.preview-image .upload-hidden');
imgTarget.on('change', function() {
    var parent = $(this).parent();
    parent.children('.upload-display').remove();
    if (window.FileReader) { //image 파일만 
        if (!$(this)[0].files[0].type.match(/image\//)) return;
        var reader = new FileReader();
        reader.onload = function(e) {
            var src = e.target.result;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="' + src + '" class="upload-thumb"></div></div>');
        
        }
        reader.readAsDataURL($(this)[0].files[0]);
        
    } else {
        $(this)[0].select();
        $(this)[0].blur();
        var imgSrc = document.selection.createRange().text;
        parent.prepend(
            '<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>'
        );
        
    var img = $(this).siblings('.upload-display').find('img');
    
    
        img[0].style.filter =
            "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" + imgSrc + "\")";
        
    }
    
});






////필수 입력항목 유효성검사
//$('#write_button').click(function(){
//	
//	 if($('#btitle').val() == ""){
//	
//		alert('제목을 입력해 주세요');
//		return false;
//	
//	}else if($('#bprice').val() == ""){
//	
//	alert('가격을 입력해 주세요');
//		return false;
//	
//	
//	}else if($('#bsale').val() == ""){
//	
//	alert('할인율을 입력해 주세요');
//		return false;
//	
//	
//	}else if($('#bexplain').val() == ""){
//	
//	alert('상품설명을 입력해 주세요');
//		return false;
//	
//	
//	}else if($('#fileSubmit1').val() == ""){
//	
//	alert('사진을 등록해 주세요');
//		return false;
//	
//	
//	}
//
//
//})









