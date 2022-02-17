<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 업로드</title>
</head>
<body>
	<div class="wrap">
		<h3 class="pop_tit">이미지 업로드</h3>
		<form action="imgUpload.jsp" method="post" enctype="multipart/form-data" onsubmit="return invalidCheck(this)">
			<div class="item_fr">	
				<label for="gcode" class="lb">이미지 : </label>
				<input type="file" name="gimg" id="gimg"  required autofocus />
				<input type="submit" value="이미지 업로드"/>
			</div>	
		</form>
		<script>
		function invalidCheck(f) {
			var gimg = f.gimg.value;
			gimg = gimg.trim();
			if(gimg.length<=0) {
				alert("이미지가 업로드 되지 않았습니다.");
				return false;
			}
		}
		</script>
	</div>	
</body>
</html>