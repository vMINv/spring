<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div class="container">
<form modelAttribute="NewMember" action="./insert" method="post">
  <div class="mb-3">
    <label class="form-label">아이디</label>
    <input type="text" class="form-control" name="username" required />
  </div>
  <div class="mb-3">
    <label class="form-label">비밀번호</label>
    <input type="password" class="form-control" name="password" required />
  </div>
  <div class="mb-3">
    <label class="form-label">이름</label>
    <input type="text" class="form-control" name="name" required />
  </div>
  <div class="mb-3">
    <label class="form-label">이메일</label>
    <input type="email" class="form-control" name="email" placeholder="name@example.com" />
  </div>
  <div class="mb-3">
    <label class="form-label">전화번호</label>
    <input type="tel" class="form-control" name="tel" placeholder="010-1234-5678" />
  </div>
  <div class="mb-3">
    <label class="form-label">성별</label>
    <div class="form-check">
	  <input class="form-check-input" type="radio" name="gender" value="여성" checked />
	  <label class="form-check-label">
	    여성
	  </label>
	</div>
    <div class="form-check">
	  <input class="form-check-input" type="radio" name="gender" value="남성" />
	  <label class="form-check-label">
	    남성
	  </label>
	</div>
  </div>
  <div class="mb-3">
    <label class="form-label">생일</label>
    <input type="date" class="form-control" name="birth" required />
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>
</html>