<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<h2>商品詳細画面</h2>

	<form:form modelAttribute="purchaseForm" action="/shoping/menu">
		<table>
			<form:input type="hidden" path="itemId" value="${dispItem.id}" />
			<tr>
				<th colspan="2"><img src="${dispItem.imageUrl}"
					title="${dispItem.name}" height=300 /></th>
			</tr>
			<tr>
				<td><c:out value="${dispItem.name}" /></td>
				<td><c:out value="${dispItem.price}" />円</td>
			</tr>
			<tr>
				<td><form:input path="count" size="1" />個</td>
				<td><form:button>購入</form:button></td>
			</tr>
		</table>
	</form:form>

	<br>
	<div>
		<a href="<c:url value='/menu' />">メニュー</a>
	</div>
	<div>
		<a href="<c:url value='/list' />">商品一覧</a>
	</div>
	<div>
		<a href="<c:url value='/menu' />">購入履歴</a>
	</div>
	<br>
	<div>
		<a href="<c:url value='/login' />">ログアウト</a>
	</div>

</body>
</html>