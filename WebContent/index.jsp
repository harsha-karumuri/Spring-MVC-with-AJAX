<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>

function calculate() {
	
	var n= document.myform.num.value;
	
	//1. Create an object of XmlHttpRequest
	var xhr= new XMLHttpRequest();
	
	xhr.open('GET','/AjaxWithSpringMVC/timeTable?val='+n, true);
	xhr.send();
	
	xhr.onreadystatechange=function() {
		if(xhr.readyState==4 && xhr.status==200) {
			
			var data=xhr.responseText;
			document.getElementById('mydata').innerHTML=data;
		}
	}
	
}

</script>
</head>
<body>
	<div align="center">
		<form action="" name="myform">
			<table border="1">
				<tr>
					<td>Enter a Number</td>
					<td><input type="text" name="num"></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="button" value="click" onclick="calculate()"></td>
				</tr>
			</table>
		</form>
		<span id="mydata"></span>
	</div>
	</body>
</html>