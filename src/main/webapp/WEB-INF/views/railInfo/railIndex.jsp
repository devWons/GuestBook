<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title><s:message code="common.title" /></title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<style>
.test th {
	text-align:left;
}
.test td {
	text-align:right;
}
</style>


<script type="text/javascript">
	
	var pub3 = "https://www.letskorail.com";
	
	function reservation() {
		$("#txtMember").val($("#id").val());
		$("#txtPwd").val($("#pw").val());
		Login(1);
	}
	
	function cancel() {
		$("#id").val("");
		$("#pw").val("");
	}
	
	function Login(sel)
	{
		var expdate  = new Date();
		var expdate2 = new Date();
		expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
		expdate2.setTime(expdate2.getTime() - 1); // 쿠키 삭제조건
		
		var txtMemberNo = '';
		if (document.form1.selInputFlg.value == "2"){ // 멤버십 번호 로그인 :2
			txtMemberNo = document.form1.txtMember.value;

			if (txtMemberNo == ''){
				alert('회원번호를 입력하십시오');
				$("#id").focus();
				return;
			}

			if (txtMemberNo.length != 10){
				alert('회원번호를 정확하게 입력하여 주십시오.');
				document.form1.txtMember.focus();
				document.form1.txtMember.select();
				return;
			}

			// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
// 			if (document.form1.checksaveid.checked){
// 				setCookie('saveMember', document.form1.txtMember.value, expdate);
// 				// 휴대폰번호쿠키삭제
// 				setCookie('saveCp', '', expdate2);
// 			}else{
// 				setCookie('saveMember', '', expdate2);
// 			}
		}else if (document.form1.selInputFlg.value == "4" ){ // 휴대전화 로그인 :4
			txtMemberNo = document.form1.txtCpNo1.value
				  + '-' + document.form1.txtCpNo2.value
				  + '-' + document.form1.txtCpNo3.value;

			if (txtMemberNo == ''){
				alert('휴대폰번호를 입력하십시오');
				return;
			}

			if( document.form1.txtCpNo2.value.length < 3 ||
				document.form1.txtCpNo3.value.length < 4 ||
				dw_IsNumeric(document.form1.txtCpNo2.value) == false ||
				dw_IsNumeric(document.form1.txtCpNo3.value) == false ){
				alert('휴대폰번호를 정확하게 입력하여 주십시오.');
				document.form1.txtCpNo2.focus();
				document.form1.txtCpNo2.select();
				return;
			}
		}else if (document.form1.selInputFlg.value == "5"){ //E-mail 로그인 :5
			if (document.form1.txtEmailNo_1.value.length == 0){
				alert("이메일을 입력해 주시기 바랍니다.");
				document.form1.txtEmailNo_1.focus();
				return;
			}
			if (document.form1.txtEmailNo_2.value.length == 0){
				alert("이메일을 입력해 주시기 바랍니다.");
				document.form1.txtEmailNo_2.focus();
				return;
			}

			txtMemberNo = document.form1.txtEmailNo_1.value + "@" + document.form1.txtEmailNo_2.value;

			if (txtMemberNo == ''){
				alert('이메일 아이디를 올바르게 입력하십시오');
				document.form1.txtEmailNo.focus();
				return;
			}


			// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
			if (document.form1.chk_e.checked){
				setCookie('saveEmail_1', document.form1.txtEmailNo_1.value, expdate);
				setCookie('saveEmail_2', document.form1.txtEmailNo_2.value, expdate);
			}else{
				setCookie('saveEmail_1', '', expdate2);
				setCookie('saveEmail_2', '', expdate2);
			}
		}



		var txtPwd = '';
		if (document.form1.selInputFlg.value == "2"){ // 멤버십 번호 로그인 :2
			txtPwd = document.form1.txtPwd.value;
		}else if (document.form1.selInputFlg.value == "4"){ // 휴대전화 로그인 :4
			txtPwd = document.form1.txtPwd1.value;
		}else if (document.form1.selInputFlg.value == "5"){ // E-mail 로그인 :5
			txtPwd = document.form1.txtPwd2.value;
		}

// 		if (checkSpace(pwd)){
// 			alert('비밀번호는 공백없이 입력해 주세요.');
// 			document.form1.txtPwd.focus();
// 			document.form1.txtPwd.select();
// 			return;
// 		}

		// 4자리
		if (txtPwd.length == 4){
			document.form2.txtDv.value = '1';
		// 8자리이상
		}else if (8 <= txtPwd.length){
			document.form2.txtDv.value = '2';
		}else{
			alert('비밀번호는 4자리 또는 영문자 숫자 8자리 이상으로 입력하여주십시오.');

			if (document.form1.selInputFlg.value == "2"){ // 멤버십 번호 로그인 :2
				document.form1.txtPwd.focus();
				document.form1.txtPwd.select();
			}else if( document.form1.selInputFlg.value == "4" ){ // 휴대전화 로그인 :4
				document.form1.txtPwd.focus();
				document.form1.txtPwd.select();
			}else if( document.form1.selInputFlg.value == "5" ){ // E-mail 로그인 :5
				document.form1.txtPwd2.focus();
				document.form1.txtPwd2.select();
			}
			return;
		}


		// 이중보안 2015.05.07 ljy
		document.form2.encUserId.value = '';
		document.form2.encUserPwd.value = '';
		
			try {
				var rsa = new RSAKey();
				rsa.setPublic('84f089038d97a209c385818b0291b6ba526def7cd95b9dcb04d211e045afe9872e30fddf11aa99fa10faee02a669f76d6110c495bee6741514e38f92a75930a766f5f9bdbeeb080e5d14f9a8f85395a2eb3a866a343ab5d9f7090dd8e7898024ac71c5d7e53cbec1d8300dd9d86f0e2eb462d1f2dba4a09d0891791aaa99e94d', '10001');
	
				// 사용자ID와 비밀번호를 RSA로 암호화한다.
				var e_txtMemberNo = rsa.encrypt(txtMemberNo);
				var e_txtPwd = rsa.encrypt(txtPwd);
	
				document.form2.encUserId.value = e_txtMemberNo;
				document.form2.encUserPwd.value = e_txtPwd;
	
			} catch(err) {
				//alert(err);
				document.form2.UserId.value = txtMemberNo;
				document.form2.UserPwd.value = txtPwd;
			}
		

		document.form2.selInputFlg.value = document.form1.selInputFlg.value;
// 		document.form2.action = pub3 + '/korail/com/loginAction.do';
		document.form2.action = 'test.php';
		document.form2.submit();
	}

	
</script>
<body>
	<table class="test">
		<tr>
			<th>ID&nbsp;</th>
			<td><input type="text" id="id" name="id" value="" /></td>
		</tr>
		<tr>
			<th>PassWord&nbsp;</th>
			<td><input type="password" id="pw" name="pw" value="" /></td>
		</tr>
		<tr>
			<th></th>
			<td>
				<a href="#" onclick="javascript:reservation()">예약</a>
				<a href="#" onclick="javascript:cancel()">취소</a>
			</td>
		</tr>
	</table>
	
	<form name="form1" method="post" action="" >
		<input type="hidden" id="selInputFlg" name="selInputFlg" value="2"/>
		<input type="hidden" id="txtMember" name="txtMember" value="" />
		<input type="hidden" id="txtPwd" name="txtPwd" value="" />
	</form>
	<form name="form2" method="post" action="">
		<input type="hidden" name="txtBookCnt"   value=""/>
		<input type="hidden" name="txtIvntDt"    value=""/>
		<input type="hidden" name="txtTotCnt"    value=""/>
		<input type="hidden" name="selValues"    value=""/>
		<input type="hidden" name="selInputFlg"  value="2"/>
		<input type="hidden" name="radIngrDvCd"  value="2"/>
		<input type="hidden" name="ret_url"      value=""/>
		<input type="hidden" name="hidMemberFlg" value="1"/>
		<!-- jyg 20100408 해랑예약시 외부업체 Session정보 추가 -->
		<input type="hidden" name="txtHaeRang"   value=""/>
		<input type="hidden" name="hidEmailAdr"  value=""/>
		<input type="hidden" name="txtDv"        value=""/><!-- 비밀번호변경에따른 추가  -->
		
		<input type="hidden" name="UserId"  value="" />
		<input type="hidden" name="UserPwd" value="" />
		<input type="hidden" name="encUserId" value="" />
		<input type="hidden" name="encUserPwd" value="" />
		<input type="hidden" name="keyname" value="49" />


		<!-- SSO 관련 -->
		<input type="hidden" name="acsURI" 			value="http://www.letskorail.com:80/ebizsso/sso/acs"/>							
		<input type="hidden" name="providerName" 	value="Ebiz Sso"/>											<!-- Provider Name (Name) 							-->
		<input type="hidden" name="forwardingURI" 	value="/ebizsso/sso/sp/service_proc.jsp"/>					<!-- Page of Request Forwarding to IP (URI)  		-->
		<input type="hidden" name="RelayState"    	value="/ebizsso/sso/sp/service_front.jsp"/>					<!-- URL or Parameter typed by user 				-->
		<input type="hidden" name="IPType" 			value="Ebiz Sso Identity Provider"/>						<!-- IP Name (Name for Selecting Public Key of IP)  -->
		<!-- //SSO 관련 -->
	</form>
	
</body>
</html>