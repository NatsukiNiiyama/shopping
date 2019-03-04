<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<h2>ログイン画面</h2>

	<form:form modelAttribute="loginForm" action="/shoping/menu">
		<div>ユーザIDを入力してください。</div>
		<div>
			<form:input path="userId" />
			<form:errors path="userId" />
		</div>
		<div>パスワードを入力してください。</div>
		<div>
			<form:password path="password" />
			<form:errors path="password" />
		</div>
		<div>
			<form:button>送信</form:button>
		</div>
	</form:form>

</body>
</html>