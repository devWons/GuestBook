function memberInfoForm(actionType)
{
	
	if(actionType == "login")
	{
		if(validationCheck(actionType))
		{
			$.ajax({
		        url : "/cabalMania/goLogin.php",
		        type: "post",
		        data : $("#userLoginForm").serialize(),
		        success : function(data){
		        	if(data.msg == "loginSuccess")
	        		{
			    		window.location.href = "/cabalMania/cabalManiaMain.php";
	        		}
		        	else
		        	{
		        		alert(data.msg);
		        	}
		        }
		    });
		}
	}
	
}

function validationCheck(actionType)
{
	return true;
}