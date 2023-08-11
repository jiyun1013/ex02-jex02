<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">Tables</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
				<li class="breadcrumb-item active">Tables</li>
			</ol>
			<div class="card mb-4">
				<div class="card-body">
					DataTables is a third party plugin that is used to generate the
					demo table below. For more information about DataTables, please
					visit the <a target="_blank" href="https://datatables.net/">official
						DataTables documentation</a> .
				</div>
			</div>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> DataTable Example
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>#번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>수정일</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${list }" var="board">
							<tr>
								<td><c:out value="${board.bno }" /></td>
								<td><c:out value="${board.title }" /></td>
								<td><c:out value="${board.writer }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.updateDate }" /></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>