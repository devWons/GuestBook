//------------------------------------------------------------------------------------
// CKEDITOR 환경설정.
//------------------------------------------------------------------------------------
function ckeditor(mode)
{
	var ckeditorFlag = false;
	switch (mode) {
		case "C":
			ckeditorFlag = true;
			break;
		case "R":
			break;
		case "U":
			ckeditorFlag = true;
			break;
		default :
			ckeditorFlag = true;
			break;
	}
	
	if(ckeditorFlag)
	{
		CKEDITOR.replace("bbsContent", {
			width : '95%',
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_BR,
			defaultLanguage : 'ko'
			
		});
	
		CKEDITOR.on('dialogDefinition', function(ev) {                
	        var dialogName = ev.data.name;
	        var dialogDefinition = ev.data.definition;
	
			dialogDefinition.removeContents('advanced');
// 				dialogDefinition.removeContents('Link');
		
			if(dialogName == 'image') {
// 				dialogDefinition.dialog.resize(500, 600);
//        		var imgTab = dialogDefinition.dialog.getCurrent();
			}
        
	        if(dialogName == "Link") 
	       	{
	        	
	       	}
		});
	}
}

//------------------------------------------------------------------------------------
// decorators 숨기기/보이기
//------------------------------------------------------------------------------------
function decoratorsToggle(mode)
{
	if(mode)
	{
		// decorators hidden
		$(".topCommContent").hide();
		$("#top_navWrap").hide();
	} else {
		// decorators show
		$(".topCommContent").show();
		$("#top_navWrap").show();
	}
	
}


//------------------------------------------------------------------------------------
// Textarea Resize
//------------------------------------------------------------------------------------
function contentTextareaResize()
{
	var obj = "bbsContent";
	var bsize = 30;
	var sTextarea = document.getElementById(obj);
    var csize = (sTextarea.scrollHeight >= bsize) ? sTextarea.scrollHeight+"px" : bsize+"px";
    sTextarea.style.height = bsize+"px"; 
    sTextarea.style.height = csize;
}

//------------------------------------------------------------------------------------
// 화면타입 변경에따른 element control
//------------------------------------------------------------------------------------
function changeViewType(mode)
{
	switch (mode) {
		case "C":
			$("#btnSave").removeClass("btnSave dispNone");
			$("#btnUpdate").removeClass("btnUpdate dispInline");
			
			$("#btnSave").addClass("btnSave dispInline");
			$("#btnUpdate").addClass("btnUpdate dispNone");
			$("#contentHeadInfo").hide();
			$("#bbsContentView").hide();
			break;
			
		case "R":
			$("#btnSave").addClass("btnSave dispNone");
			$("#btnUpdate").addClass("btnUpdate dispInline");
			$("#autoSeq").addClass("dispNone");
			$("#bbsTitle").addClass("readViewText");
			
			$("#bbsTitle").attr("readonly", "true");
			
			$(".showHideToggle").hide();
			
			getCommentListByBbsIdx();
			break;
			
		case "U":
			$("#btnSave").removeClass("btnSave dispNone");
			$("#btnUpdate").removeClass("btnUpdate dispInline");
			$("#autoSeq").removeClass("dispNone");
			$("#bbsTitle").removeClass("readViewText");
			
			$("#autoSeq").addClass("bbsSecurityBox");
			$("#btnSave").addClass("btnSave dispInline");
			$("#btnUpdate").addClass("btnUpdate dispNone");
			$("#bbsTitle").removeAttr("readonly");
			$("#bbsContentView").hide();
			
			$(".showHideToggle").show();
			$(".commentBoxToggle").hide();
			ckeditor(mode);
			break;
	}
	
	changeDocumentViewType(mode);
}

//------------------------------------------------------------------------------------
// 코멘트 저장
//------------------------------------------------------------------------------------
function insertByComment()
{
	
	if(intervalName != null)
	{
		toastMsg("잠시 후 시도해주세요.");
		return;
	}
	
	$.ajax({
        url : "/cabalMania/insertByComment.php",
        type : "post",
        data : $("#commentForm").serialize(),
        success : function(data){
        	toastMsg(data.msg);
        	if(data.msgCode == "Success")
    		{
        		//코멘트 목록을 다시 가져온다.
        		getCommentListByBbsIdx();
        		//코멘트작성 딜레이
        		delayCommentSave();
        		$("#commentContent").focus();
    		}
        }
    });
	
}

//------------------------------------------------------------------------------------
// 코멘트 삭제
//------------------------------------------------------------------------------------
function deleteComment(idx)
{
	var bbsType = $("#bbsType").val();
	$.ajax({
        url : "/cabalMania/deleteComment.php",
        type : "post",
        data : ({
        		commentIdx : idx,
        		bbsType : bbsType
        		}),
        success : function(data){
        	toastMsg(data.msg);
        	if(data.msgCode == "Success")
    		{
        		//코멘트 목록을 다시 가져온다.
        		getCommentListByBbsIdx();
    		}
        }
    });
}

//------------------------------------------------------------------------------------
// 체크박스 checked true : false
//------------------------------------------------------------------------------------
function checkModeToggle(mode)
{
	$(".btnCheckbox").prop("checked", mode);
}

//------------------------------------------------------------------------------------
// 코멘트 입력 후 x초 딜레이 
//------------------------------------------------------------------------------------
var intervalCnt = 5;
var intervalName;
function delayCommentSave()
{
	intervalName = setInterval(function(){
		intervalCnt--;
		delayViewCount(intervalCnt);
	}, 1000);
}

function delayViewCount(cnt)
{
	if(cnt == 0)
	{
		intervalCnt = 5;
		$("#commentBtnSave").text("저장");
		clearInterval(intervalName);
		intervalName = null;
	} else {
		$("#commentBtnSave").text(cnt+"초");
	}
	
}

//------------------------------------------------------------------------------------
// 메뉴 팝업창 오픈
//------------------------------------------------------------------------------------
function quickMenu(nickName){
	
}