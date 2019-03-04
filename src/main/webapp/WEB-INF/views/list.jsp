<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<h2>商品一覧画面</h2>

	<c:forEach var="item" items="${itemList}">
		<%-- <form:form modelAttribute="detailForm" action="${'/shoping/detail/' += item.id}">--%>
		<form:form modelAttribute="detailForm" action="/shoping/detail">
		<form:input type="hidden" path="itemId" value="${item.id}" />
			<table>
				<tr>
					<th rowspan="2"><img src="${item.imageUrl}"
						title="${item.name}" height=100 /></th>
					<td colspan="2"><c:out value="${item.name}" /></td>
				</tr>
				<tr>
					<td><c:out value="${item.price}" />円</td>
					<td><form:button>詳細</form:button></td>
				</tr>
			</table>
		</form:form>
	</c:forEach>

	<br>
	<div>
		<a href="<c:url value='/backmenu' />">メニュー</a>
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