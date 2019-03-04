<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<h2>メニュー画面</h2>

	<div>
		ようこそ、
		<c:out value="${loginForm.userId}" />
		さん
	</div>
	<br>
	<div>
		<a href="<c:url value='/list' />">商品一覧</a>
	</div>
	<div>
		<a href="<c:url value='/login' />">購入履歴</a>
	</div>
	<br>
	<div>
		<a href="<c:url value='/login' />">ログアウト</a>
	</div>

</body>
</html>