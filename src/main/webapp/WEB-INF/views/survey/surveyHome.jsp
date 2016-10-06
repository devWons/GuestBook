<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>..:: Research Home ::..</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
	
	function init()
	{
		
	}
	
	function displayCategory(type)
	{
		console.log("type : "+ type);
		$("div[name=subDivType]").hide();
		$(".navType").removeClass("active");
		
		$(".member_info_form").show();
		$("#"+type+"_type").show();
		$("#"+type).addClass("active");
	}
</script>
<body>
<%@ include file="/WEB-INF/views/include/top_nav.jsp" %>
<div id="wrap">
	<div id="comment_wrap">
		<table class="tableBasic02">
			<colgroup>
				<col width="380px">
				<col width="100px">
			</colgroup>
			<tr>
				<td>
					<form id="commentForm" name="commentForm">
						<textarea rows="4" cols="" id="commentInputBox" name="commentInputBox" class="commentInputBox"></textarea>
						<a href="javascript:insertByComment();" id="commentBtnSave" class="btnSaveComment">저장</a>
					</form>
				</td>
				<td>달력</td>
			</tr>
			<tr>
				<td colspan="2">character box...<s:message code="common.list4user"/> </td>
			</tr>
		</table>
		<div id="commentListBox">
		
		</div>
	</div>
	
</div>
</body>
</html>
